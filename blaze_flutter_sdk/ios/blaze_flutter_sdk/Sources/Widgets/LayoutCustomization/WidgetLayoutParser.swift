import BlazeSDK
import Foundation

extension Dictionary where Key == String, Value == AnyHashable {
    /**
     * Extension function to convert a Dictionary to BlazeReactWidgetLayout using JSONDecoder
     */
    func toBlazeReactWidgetLayout() -> BlazeReactWidgetLayout? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            let decoder = JSONDecoder()
            return try decoder.decode(BlazeReactWidgetLayout.self, from: jsonData)
        } catch {
            return nil
        }
    }

    /**
     * Extension function to convert a Dictionary to BlazeReactWidgetStylesOverrides using JSONDecoder
     */
    var toReactWidgetStylesOverrides: BlazeReactWidgetStylesOverrides? {
        var result: BlazeReactWidgetStylesOverrides?

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactWidgetStylesOverrides.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactWidgetStylesOverrides: \(error)")
        }

        return result
    }

    /// Transforms the dictionary into a map of BlazeReactWidgetItemCustomMapping to BlazeReactWidgetStylesOverrides
    var toReactWidgetStylesOverridesMap:
        [BlazeReactWidgetItemCustomMapping: BlazeReactWidgetStylesOverrides]?
    {
        var resultMap = [BlazeReactWidgetItemCustomMapping: BlazeReactWidgetStylesOverrides]()

        // Iterate through each key-value pair in the dictionary
        for (key, value) in self {
            // Attempt to decode the key into BlazeReactWidgetItemCustomMapping
            guard let keyData = key.data(using: .utf8),
                let keyValue = try? JSONDecoder().decode(
                    BlazeReactWidgetItemCustomMapping.self, from: keyData)
            else {
                continue
            }

            // Attempt to serialize the value dictionary and decode it into BlazeReactWidgetStylesOverrides
            guard let valueDict = value as? [String: AnyHashable],
                let valueData = try? JSONSerialization.data(withJSONObject: valueDict, options: []),
                let valueValue = try? JSONDecoder().decode(
                    BlazeReactWidgetStylesOverrides.self, from: valueData)
            else {
                continue
            }

            // Add to the result map
            resultMap[keyValue] = valueValue
        }

        return resultMap.isEmpty ? nil : resultMap
    }
}
