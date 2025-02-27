import Foundation
class ViewBarModel: NSObject, Codable {
    @objc dynamic var sizeMagnitude = 0.0
    @objc dynamic var fillArray: [String]?
    var eraseEnable = false
    var sumervalNumber = 0.0
    var pushCameraDictionary: [String: String]?
    override init() {
        super.init()
        sizeMagnitude = 422.68
        fillArray = []
        eraseEnable = true
        sumervalNumber = 27.03
        pushCameraDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        sizeMagnitude = (dictionary["begin"] as? Double) ?? 0.0
        if let object = dictionary["list"] as? [String] {
            fillArray = object
        }
        eraseEnable = (dictionary["year"] as? Bool) ?? false
        sumervalNumber = (dictionary["outside"] as? Double) ?? 0.0
        pushCameraDictionary = dictionary["temp"] as? [String: String]
    }

    func weltanschauungReset() {
        sizeMagnitude = 0.0
        fillArray?.removeAll()
        eraseEnable = false
        sumervalNumber = 0.0
        pushCameraDictionary?.removeAll()
    }
}
