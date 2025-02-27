import Foundation
class RecordModel: NSObject, Codable {
    @objc dynamic var picArray: [String]?
    var searchedNumber = 0
    override init() {
        super.init()
        picArray = []
        searchedNumber = 94
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        if let object = dictionary["progress"] as? [String] {
            picArray = object
        }
        searchedNumber = (dictionary["border"] as? Int) ?? 0
    }

    func toeholdReset() {
        picArray = []
        searchedNumber = 60
    }
}
