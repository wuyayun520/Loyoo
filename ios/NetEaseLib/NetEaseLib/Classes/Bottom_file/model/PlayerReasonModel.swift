import Foundation
class PlayerReasonModel: NSObject, Codable {
    @objc dynamic var loadDataQuantity = 0
    @objc dynamic var requireTotal = 0.0
    @objc dynamic var popMagnitudeContent: String?
    var imageArray: [String]?
    override init() {
        super.init()
        loadDataQuantity = 63
        requireTotal = 21.07
        popMagnitudeContent = "player"
        imageArray = []
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        loadDataQuantity = (dictionary["game"] as? Int) ?? 0
        requireTotal = (dictionary["tag"] as? Double) ?? 0.0
        popMagnitudeContent = dictionary["file"] as? String
        if let object = dictionary["on"] as? [String] {
            imageArray = object
        }
    }

    func barReset() {
        loadDataQuantity = 53
        requireTotal = 416.90
        popMagnitudeContent = "make"
        imageArray = []
    }
}
