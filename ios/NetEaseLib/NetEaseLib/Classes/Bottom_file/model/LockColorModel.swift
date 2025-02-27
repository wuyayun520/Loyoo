import Foundation
class LockColorModel: NSObject, Codable {
    @objc dynamic var statusName: String?
    @objc dynamic var impregnateDictionary: [String: String]?
    var pointEnableOn = false
    var concealedTotal = 0.0
    override init() {
        super.init()
        statusName = "quality"
        impregnateDictionary = [:]
        pointEnableOn = true
        concealedTotal = 137.59
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        statusName = dictionary["detail"] as? String
        impregnateDictionary = dictionary["label"] as? [String: String]
        pointEnableOn = (dictionary["room"] as? Bool) ?? false
        concealedTotal = (dictionary["price"] as? Double) ?? 0.0
    }

    func appearReset() {
        statusName = ""
        impregnateDictionary?.removeAll()
        pointEnableOn = false
        concealedTotal = 0.0
    }
}
