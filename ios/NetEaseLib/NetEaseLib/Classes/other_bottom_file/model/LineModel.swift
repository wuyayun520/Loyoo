import Foundation
class LineModel: NSObject, Codable {
    @objc dynamic var contentNumber = 0.0
    @objc dynamic var labArray: [String]?
    @objc dynamic var fileDictionary: [String: String]?
    var tagEnable = false
    var nationalityBagNumber = 0
    var viewArray: [String]?
    var thoughtImageDictionary: [String: String]?
    override init() {
        super.init()
        contentNumber = 452.76
        labArray = []
        fileDictionary = [:]
        tagEnable = false
        nationalityBagNumber = 82
        viewArray = []
        thoughtImageDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        contentNumber = (dictionary["voice"] as? Double) ?? 0.0
        if let object = dictionary["tip"] as? [String] {
            labArray = object
        }
        fileDictionary = dictionary["sub"] as? [String: String]
        tagEnable = (dictionary["title"] as? Bool) ?? false
        nationalityBagNumber = (dictionary["name"] as? Int) ?? 0
        if let object = dictionary["data"] as? [String] {
            viewArray = object
        }
        thoughtImageDictionary = dictionary["block"] as? [String: String]
    }

    func statusReset() {
        contentNumber = 93.23
        labArray = []
        fileDictionary = [:]
        tagEnable = true
        nationalityBagNumber = 83
        viewArray = []
        thoughtImageDictionary = [:]
    }
}
