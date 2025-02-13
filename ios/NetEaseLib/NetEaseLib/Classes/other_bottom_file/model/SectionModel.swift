import Foundation
class SectionModel: NSObject, Codable {
    @objc dynamic var collectionInfoCount = 0
    var giftEnableEnable = false
    override init() {
        super.init()
        collectionInfoCount = 76
        giftEnableEnable = false
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        collectionInfoCount = (dictionary["row"] as? Int) ?? 0
        giftEnableEnable = (dictionary["call"] as? Bool) ?? false
    }

    func lifeStyleReset() {
        collectionInfoCount = 0
        giftEnableEnable = false
    }
}
