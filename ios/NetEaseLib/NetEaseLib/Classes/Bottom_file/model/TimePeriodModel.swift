import Foundation
class TimePeriodModel: NSObject, Codable {
    @objc dynamic var quantityMagnitude = 0
    @objc dynamic var itemMagnitude = 0.0
    @objc dynamic var iconSignText: String?
    @objc dynamic var accountingDataDictionary: [String: String]?
    var slideAwakeQuantity = 0.0
    var viewLastText: String?
    var timeArray: [String]?
    override init() {
        super.init()
        quantityMagnitude = 80
        itemMagnitude = 88.66
        iconSignText = "back"
        accountingDataDictionary = [:]
        slideAwakeQuantity = 176.22
        viewLastText = "list"
        timeArray = []
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        quantityMagnitude = (dictionary["release"] as? Int) ?? 0
        itemMagnitude = (dictionary["child"] as? Double) ?? 0.0
        iconSignText = dictionary["event"] as? String
        accountingDataDictionary = dictionary["at"] as? [String: String]
        slideAwakeQuantity = (dictionary["appear"] as? Double) ?? 0.0
        viewLastText = dictionary["of"] as? String
        if let object = dictionary["intimate"] as? [String] {
            timeArray = object
        }
    }

    func playerReset() {
        quantityMagnitude = 50
        itemMagnitude = 473.63
        iconSignText = "search"
        accountingDataDictionary = [:]
        slideAwakeQuantity = 304.46
        viewLastText = "model"
        timeArray = []
    }
}
