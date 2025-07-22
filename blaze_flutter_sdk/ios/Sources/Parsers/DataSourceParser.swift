import Foundation
import BlazeSDK

extension Dictionary where Key == String, Value == AnyHashable {
    
    /// Converts Flutter's dictionary representation to BlazeDataSourceType
    var toBlazeDataSourceType: BlazeDataSourceType? {
        if self["labels"] != nil {
            return parseLabelsDataSource()
        } else if self["ids"] != nil {
            return parseIdsDataSource()
        } else if self["recommendationsType"] != nil {
            return parseRecommendationsDataSource()
        }
        return nil
    }
    
    private func parseLabelsDataSource() -> BlazeDataSourceType? {
        guard let blazeWidgetLabel = self["labels"]?.asBlazeWidgetLabel else {
            return nil
        }
        
        return .labels(
            blazeWidgetLabel,
            labelsPriority: parseLabelsPriority(),
            orderType: (self["orderType"] as? String)?.toBlazeOrderType,
            advancedOrderType: (self["advancedOrderType"] as? String)?.toBlazeAdvancedOrderType,
            maxItems: self["maxItems"] as? Int,
            personalizedType: (self["personalizedType"] as? [String: AnyHashable])?.toBlazePersonalizedType
        )
    }
    
    private func parseIdsDataSource() -> BlazeDataSourceType? {
        guard let ids = self["ids"] as? [String] else {
            return nil
        }
        
        return .ids(
            ids,
            orderType: (self["orderType"] as? String)?.toBlazeOrderType,
            advancedOrderType: (self["advancedOrderType"] as? String)?.toBlazeAdvancedOrderType
        )
    }
    
    private func parseRecommendationsDataSource() -> BlazeDataSourceType? {
        guard let recommendationsDict = self["recommendationsType"] as? [String: AnyHashable],
              let type = recommendationsDict["type"] as? String else {
            return nil
        }
        
        let anyLabelFilter = recommendationsDict["anyLabelFilter"] as? [String] ?? []
        
        let recommendationsType: BlazeRecommendationsType
        switch type {
        case "ForYou":
            recommendationsType = .forYou(anyLabelFilter: anyLabelFilter)
        case "Trending":
            recommendationsType = .trending(anyLabelFilter: anyLabelFilter)
        default:
            return nil
        }
        
        return .recommendations(recommendationsType)
    }
    
    private func parseLabelsPriority() -> [BlazeWidgetLabel]? {
        guard let labelsPriorityArray = self["labelsPriority"] as? [AnyHashable] else {
            return nil
        }
        
        let labels = labelsPriorityArray.toBlazeWidgetLabelArray
        return labels.isEmpty ? nil : labels
    }
    

    
    var toBlazePersonalizedType: BlazeDataSourcePersonalizedType? {
        guard let type = self["type"] as? String else {
            return nil
        }
        
        switch type {
        case "Ids":
            return parsePersonalizedTypeIds()
        case "Labels":
            return parsePersonalizedTypeLabels()
        default:
            return nil
        }
    }
    
    private func parsePersonalizedTypeIds() -> BlazeDataSourcePersonalizedType? {
        guard let idsDict = self["ids"] as? [String: [String]] else {
            return nil
        }
        
        var convertedDict: [BlazeDataSourcePersonalizedType.ContentType: [String]] = [:]
        
        for (key, value) in idsDict {
            guard let contentType = key.toPersonalizedContentType else {
                continue
            }
            convertedDict[contentType] = value
        }
        
        return .ids(convertedDict)
    }
    
    private func parsePersonalizedTypeLabels() -> BlazeDataSourcePersonalizedType? {
        guard let labelsFilter = self["labelsFilter"]?.asBlazeWidgetLabel else {
            return nil
        }
        
        let labelsPriorityArray = self["labelsPriority"] as? [AnyHashable] ?? []
        let labelsPriority = labelsPriorityArray.toBlazeWidgetLabelArray
        
        return .labels(
            labelsFilter: labelsFilter,
            labelsPriority: labelsPriority
        )
    }
}

extension AnyHashable {
    
    var asBlazeWidgetLabel: BlazeWidgetLabel? {
        guard let labelDataSource = self as? [String: AnyHashable],
              let labelValue = labelDataSource["value"] as? String else {
            return nil
        }
        return .singleLabel(labelValue)
    }
}

extension Array where Element == AnyHashable {
    
    /// Converts an array of Any objects to an array of BlazeWidgetLabel objects
    var toBlazeWidgetLabelArray: [BlazeWidgetLabel] {
        return self.compactMap { $0.asBlazeWidgetLabel }
    }
}

extension String {
    
    var toBlazeOrderType: BlazeOrderType? {
        switch self {
        case "manual":
            return .manual
        case "recentlyUpdatedFirst":
            return .recentlyUpdatedFirst
        case "recentlyUpdatedLast":
            return .recentlyUpdatedLast
        case "aToZ":
            return .aToZ
        case "zToA":
            return .zToA
        case "recentlyCreatedFirst":
            return .recentlyCreatedFirst
        case "recentlyCreatedLast":
            return .recentlyCreatedLast
        case "random":
            return .random
        default:
            return nil
        }
    }
    
    var toBlazeAdvancedOrderType: BlazeAdvancedOrderType? {
        switch self {
        case "liveFirst":
            return .liveFirst
        default:
            return nil
        }
    }
    
    var toPersonalizedContentType: BlazeDataSourcePersonalizedType.ContentType? {
        switch self {
        case "players":
            return .players
        case "teams":
            return .teams
        default:
            return nil
        }
    }
    
    var asCachingLevel: BlazeCachePolicyLevel? {
        switch self {
        case "low":
            return .Low
        case "defaultLevel":
            return .Default
        case "high":
            return .High
        case "extreme":
            return .Extreme
        default:
            return nil
        }
    }
    
    var asEntryPointTriggerSource: BlazeEntryPointTriggerSource? {
        switch self {
        case "notification":
            return .notification
        case "deepLink":
            return .deepLink
        case "entryPoint":
            return .entryPoint
        default:
            return nil
        }
    }
    
} 
