import Foundation
class UpCommentModel: NSObject, Codable {
    @objc dynamic var subjectSwitch = false
    @objc dynamic var fromCount = 0.0
    @objc dynamic var styleVideoArray: [String]?
    var cellLiveText: String?
    var liveDictionary: [String: String]?
    override init() {
        super.init()
        subjectSwitch = true
        fromCount = 166.29
        styleVideoArray = []
        cellLiveText = "bag"
        liveDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        subjectSwitch = (dictionary["product"] as? Bool) ?? false
        fromCount = (dictionary["skin"] as? Double) ?? 0.0
        if let object = dictionary["wire"] as? [String] {
            styleVideoArray = object
        }
        cellLiveText = dictionary["ting"] as? String
        liveDictionary = dictionary["collection"] as? [String: String]
    }

    func tabReset() {
        subjectSwitch = false
        fromCount = 155.14
        styleVideoArray = []
        cellLiveText = "table"
        liveDictionary = [:]
    }
}
