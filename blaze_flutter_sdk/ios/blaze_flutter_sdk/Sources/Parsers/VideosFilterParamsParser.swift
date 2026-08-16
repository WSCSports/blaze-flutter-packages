import Foundation
import BlazeSDK

extension [String: AnyHashable]? {
    /// Builds a `BlazeVideosFilterParams` from a Flutter-provided map. Both fields are optional on
    /// iOS's native initializer (`nil` = no filter on that dimension) - unlike Android, which
    /// requires both fields via a `.base()` factory since its constructor is internal.
    func extractVideosFilterParams() -> BlazeVideosFilterParams? {
        guard let dict = self else { return nil }

        let contentTypes = (dict["contentTypes"] as? [String])?.compactMap { $0.toBlazeVideoContentType }
        let streamStates = (dict["streamStates"] as? [String])?.compactMap { $0.toBlazeLiveStreamStatus }

        return BlazeVideosFilterParams(contentTypes: contentTypes, streamStates: streamStates)
    }
}

extension String {
    var toBlazeVideoContentType: BlazeVideoContentType? {
        switch self {
        case "video":
            return .video
        case "stream":
            return .stream
        default:
            return nil
        }
    }

    var toBlazeLiveStreamStatus: BlazeLiveStreamStatus? {
        switch self {
        case "live":
            return .live
        case "upcoming":
            return .upcoming
        case "ended":
            return .ended
        default:
            return nil
        }
    }
}
