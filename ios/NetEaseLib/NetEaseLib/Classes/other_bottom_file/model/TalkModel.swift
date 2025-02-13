import Foundation
class TalkModel: NSObject, Codable {
    @objc dynamic var electSum = 0
    @objc dynamic var physicsLabSlideTotal = 0.0
    @objc dynamic var colorText: String?
    @objc dynamic var equalArray: [String]?
    var sectionOff = false
    var reliefInterval = 0
    override init() {
        super.init()
        electSum = 50
        physicsLabSlideTotal = 476.46
        colorText = "pic"
        equalArray = []
        sectionOff = true
        reliefInterval = 50
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        electSum = (dictionary["bottom"] as? Int) ?? 0
        physicsLabSlideTotal = (dictionary["cell"] as? Double) ?? 0.0
        colorText = dictionary["view"] as? String
        if let object = dictionary["table"] as? [String] {
            equalArray = object
        }
        sectionOff = (dictionary["mix"] as? Bool) ?? false
        reliefInterval = (dictionary["package"] as? Int) ?? 0
    }

    func userReset() {
        electSum = 0
        physicsLabSlideTotal = 0.0
        colorText = ""
        equalArray?.removeAll()
        sectionOff = false
        reliefInterval = 0
    }
}
