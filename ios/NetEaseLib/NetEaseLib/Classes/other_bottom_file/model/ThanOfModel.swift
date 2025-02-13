import Foundation
class ThanOfModel: NSObject, Codable {
    @objc dynamic var blockClose = false
    @objc dynamic var priceTotal = 0.0
    @objc dynamic var sourceArray: [String]?
    var noClose = false
    var ptolemaicSystemNumber = 0.0
    var presentationName: String?
    var photoArray: [String]?
    var readDictionary: [String: String]?
    override init() {
        super.init()
        blockClose = false
        priceTotal = 476.78
        sourceArray = []
        noClose = false
        ptolemaicSystemNumber = 272.28
        presentationName = "page"
        photoArray = []
        readDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        blockClose = (dictionary["icon"] as? Bool) ?? false
        priceTotal = (dictionary["make"] as? Double) ?? 0.0
        if let object = dictionary["view"] as? [String] {
            sourceArray = object
        }
        noClose = (dictionary["name"] as? Bool) ?? false
        ptolemaicSystemNumber = (dictionary["from"] as? Double) ?? 0.0
        presentationName = dictionary["video"] as? String
        if let object = dictionary["pic"] as? [String] {
            photoArray = object
        }
        readDictionary = dictionary["app"] as? [String: String]
    }

    func magnitudeReset() {
        blockClose = false
        priceTotal = 0.0
        sourceArray?.removeAll()
        noClose = false
        ptolemaicSystemNumber = 0.0
        presentationName = ""
        photoArray?.removeAll()
        readDictionary?.removeAll()
    }
}
