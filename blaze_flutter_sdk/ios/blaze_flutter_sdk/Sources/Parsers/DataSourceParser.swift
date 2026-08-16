import Foundation
import BlazeSDK

extension Dictionary where Key == String, Value == AnyHashable {
    
    /// Converts Flutter's dictionary representation to BlazeDataSourceType
    var toBlazeDataSourceType: BlazeDataSourceType? {
        // Search carries an optional "labels" key too, so it must be matched first.
        if self["searchText"] != nil {
            return parseSearchDataSource()
        } else if self["labels"] != nil {
            return parseLabelsDataSource()
        } else if self["ids"] != nil {
            return parseIdsDataSource()
        } else if self["recommendationsType"] != nil {
            return parseRecommendationsDataSource()
        } else if self["dataSources"] != nil {
            return parseCompositeDataSource()
        }
        return nil
    }

    private func parseSearchDataSource() -> BlazeDataSourceType? {
        guard let searchText = self["searchText"] as? String else {
            return nil
        }

        let maxItems = self["maxItems"] as? Int
        let labels = self["labels"]?.asBlazeWidgetLabel

        return .search(searchText: searchText, maxItems: maxItems, labels: labels)
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
        let coldStartLabels = recommendationsDict["coldStartLabels"] as? [String] ?? []

        let recommendationsType: BlazeRecommendationsType
        switch type {
        case "ForYou":
            recommendationsType = .forYou(anyLabelFilter: anyLabelFilter, coldStartLabels: coldStartLabels)
        case "Trending":
            recommendationsType = .trending(anyLabelFilter: anyLabelFilter)
        default:
            return nil
        }

        return .recommendations(recommendationsType)
    }

    /// Nested entries are validated natively (non-empty, no nested composite) - any structural
    /// violation surfaces as a `BlazeResult.failure` through the normal completion callback, so
    /// an empty/malformed list is intentionally passed through rather than pre-validated here.
    private func parseCompositeDataSource() -> BlazeDataSourceType? {
        guard let dataSourcesList = self["dataSources"] as? [AnyHashable] else {
            return nil
        }

        var entries: [BlazeCompositeDataSourceEntry] = []
        for item in dataSourcesList {
            guard let entryDict = item as? [String: AnyHashable],
                  let entry = entryDict.toBlazeCompositeDataSourceEntry else {
                return nil
            }
            entries.append(entry)
        }

        return .composite(dataSources: entries)
    }

    private var toBlazeCompositeDataSourceEntry: BlazeCompositeDataSourceEntry? {
        guard let dataSourceDict = self["dataSource"] as? [String: AnyHashable],
              let dataSource = dataSourceDict.toBlazeDataSourceType else {
            return nil
        }

        let isMandatory = (self["config"] as? [String: AnyHashable])?["isMandatory"] as? Bool ?? false

        return BlazeCompositeDataSourceEntry(
            dataSource: dataSource,
            config: BlazeCompositeDataSourceConfig(isMandatory: isMandatory)
        )
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
        case "startTimeDesc":
            return .startTimeDesc
        case "startTimeAsc":
            return .startTimeAsc
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

    /// Returns nil when absent or unrecognized, which leaves the native default
    /// (follow the system layout direction) in place.
    var asBlazeLayoutDirection: BlazeLayoutDirection? {
        switch self {
        case "ltr":
            return .ltr
        case "rtl":
            return .rtl
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
