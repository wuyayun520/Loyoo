import Foundation
class GiftShotModel: NSObject, Codable {
    var endOn = false
    var eventNumber = 0
    var fileText: String?
    override init() {
        super.init()
        endOn = false
        eventNumber = 71
        fileText = "on"
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        endOn = (dictionary["down"] as? Bool) ?? false
        eventNumber = (dictionary["list"] as? Int) ?? 0
        fileText = dictionary["sex"] as? String
    }

    func collectionReset() {
        endOn = false
        eventNumber = 75
        fileText = "dismiss"
    }
}
