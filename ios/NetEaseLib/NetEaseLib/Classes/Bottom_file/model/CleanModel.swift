import Foundation
class CleanModel: NSObject, Codable {
    @objc dynamic var frontPopularTotal = 0.0
    @objc dynamic var renderGiftContent: String?
    @objc dynamic var tabArray: [String]?
    var endName: String?
    var trackConversationArray: [String]?
    var textDictionary: [String: String]?
    override init() {
        super.init()
        frontPopularTotal = 535.06
        renderGiftContent = "location"
        tabArray = []
        endName = "more"
        trackConversationArray = []
        textDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        frontPopularTotal = (dictionary["pic"] as? Double) ?? 0.0
        renderGiftContent = dictionary["anonymous"] as? String
        if let object = dictionary["line"] as? [String] {
            tabArray = object
        }
        endName = dictionary["resume"] as? String
        if let object = dictionary["at"] as? [String] {
            trackConversationArray = object
        }
        textDictionary = dictionary["point"] as? [String: String]
    }

    func voiceReset() {
        frontPopularTotal = 389.24
        renderGiftContent = "extra"
        tabArray = []
        endName = "image"
        trackConversationArray = []
        textDictionary = [:]
    }
}
