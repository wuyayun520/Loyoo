import Foundation
class LeapOutModel: NSObject, Codable {
    @objc dynamic var playQuantity = 0
    @objc dynamic var iconArray: [String]?
    var kindTopOpen = false
    var finishInterval = 0
    var messageContent: String?
    var coinDictionary: [String: String]?
    override init() {
        super.init()
        playQuantity = 81
        iconArray = []
        kindTopOpen = false
        finishInterval = 93
        messageContent = "active"
        coinDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        playQuantity = (dictionary["me"] as? Int) ?? 0
        if let object = dictionary["data"] as? [String] {
            iconArray = object
        }
        kindTopOpen = (dictionary["mic"] as? Bool) ?? false
        finishInterval = (dictionary["call"] as? Int) ?? 0
        messageContent = dictionary["first"] as? String
        coinDictionary = dictionary["cell"] as? [String: String]
    }

    func fasteningReset() {
        playQuantity = 57
        iconArray = []
        kindTopOpen = true
        finishInterval = 68
        messageContent = "load"
        coinDictionary = [:]
    }
}
