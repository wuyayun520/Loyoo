import Foundation
class StandModel: NSObject, Codable {
    @objc dynamic var noClose = false
    @objc dynamic var theoryContent: String?
    @objc dynamic var sizeDictionary: [String: String]?
    var halogenNumber = 0
    var showArray: [String]?
    var atAttentionDictionary: [String: String]?
    override init() {
        super.init()
        noClose = false
        theoryContent = "screen"
        sizeDictionary = [:]
        halogenNumber = 99
        showArray = []
        atAttentionDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        noClose = (dictionary["value"] as? Bool) ?? false
        theoryContent = dictionary["button"] as? String
        sizeDictionary = dictionary["model"] as? [String: String]
        halogenNumber = (dictionary["text"] as? Int) ?? 0
        if let object = dictionary["application"] as? [String] {
            showArray = object
        }
        atAttentionDictionary = dictionary["user"] as? [String: String]
    }

    func playTapReset() {
        noClose = false
        theoryContent = ""
        sizeDictionary?.removeAll()
        halogenNumber = 0
        showArray?.removeAll()
        atAttentionDictionary?.removeAll()
    }
}
