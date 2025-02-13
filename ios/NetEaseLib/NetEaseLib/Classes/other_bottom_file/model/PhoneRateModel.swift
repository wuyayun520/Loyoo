import Foundation
class PhoneRateModel: NSObject, Codable {
    @objc dynamic var doingOpen = false
    @objc dynamic var contentSum = 0.0
    @objc dynamic var marginOfSafetyTitle: String?
    var closeDoing = false
    var boundaryLineSum = 0
    var tabArray: [String]?
    override init() {
        super.init()
        doingOpen = false
        contentSum = 463.90
        marginOfSafetyTitle = "lab"
        closeDoing = true
        boundaryLineSum = 81
        tabArray = []
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        doingOpen = (dictionary["label"] as? Bool) ?? false
        contentSum = (dictionary["equal"] as? Double) ?? 0.0
        marginOfSafetyTitle = dictionary["will"] as? String
        closeDoing = (dictionary["video"] as? Bool) ?? false
        boundaryLineSum = (dictionary["at"] as? Int) ?? 0
        if let object = dictionary["top"] as? [String] {
            tabArray = object
        }
    }

    func subReset() {
        doingOpen = false
        contentSum = 0.0
        marginOfSafetyTitle = ""
        closeDoing = false
        boundaryLineSum = 0
        tabArray?.removeAll()
    }
}
