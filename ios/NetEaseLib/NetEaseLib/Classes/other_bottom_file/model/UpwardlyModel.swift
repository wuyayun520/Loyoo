import Foundation
class UpwardlyModel: NSObject, Codable {
    @objc dynamic var quantityCount = 0
    @objc dynamic var withWeekArray: [String]?
    var modelOn = false
    var showMagnitude = 0
    var labelDictionary: [String: String]?
    override init() {
        super.init()
        quantityCount = 85
        withWeekArray = []
        modelOn = true
        showMagnitude = 75
        labelDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        quantityCount = (dictionary["voice"] as? Int) ?? 0
        if let object = dictionary["image"] as? [String] {
            withWeekArray = object
        }
        modelOn = (dictionary["content"] as? Bool) ?? false
        showMagnitude = (dictionary["on"] as? Int) ?? 0
        labelDictionary = dictionary["raw"] as? [String: String]
    }

    func todayReset() {
        quantityCount = 94
        withWeekArray = []
        modelOn = false
        showMagnitude = 79
        labelDictionary = [:]
    }
}
