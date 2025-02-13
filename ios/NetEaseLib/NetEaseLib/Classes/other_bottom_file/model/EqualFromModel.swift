import Foundation
class EqualFromModel: NSObject, Codable {
    @objc dynamic var beforeSwitch = false
    @objc dynamic var commentCount = 0
    @objc dynamic var styleTableTotal = 0.0
    var modelNumber = 0
    var avulsionArray: [String]?
    override init() {
        super.init()
        beforeSwitch = false
        commentCount = 93
        styleTableTotal = 338.48
        modelNumber = 67
        avulsionArray = []
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        beforeSwitch = (dictionary["count"] as? Bool) ?? false
        commentCount = (dictionary["frame"] as? Int) ?? 0
        styleTableTotal = (dictionary["image"] as? Double) ?? 0.0
        modelNumber = (dictionary["prompt"] as? Int) ?? 0
        if let object = dictionary["policy"] as? [String] {
            avulsionArray = object
        }
    }

    func momentReset() {
        beforeSwitch = false
        commentCount = 0
        styleTableTotal = 0.0
        modelNumber = 0
        avulsionArray?.removeAll()
    }
}
