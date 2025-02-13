import Foundation
class PackageModel: NSObject, Codable {
    @objc dynamic var gildTheLilySwitch = false
    @objc dynamic var tableSkipModelCount = 0
    @objc dynamic var colorNumber = 0.0
    @objc dynamic var rangeText: String?
    @objc dynamic var eyeglassesArray: [String]?
    @objc dynamic var windowDictionary: [String: String]?
    var remoteContent: String?
    var allDictionary: [String: String]?
    override init() {
        super.init()
        gildTheLilySwitch = true
        tableSkipModelCount = 99
        colorNumber = 304.87
        rangeText = "enter"
        eyeglassesArray = []
        windowDictionary = [:]
        remoteContent = "image"
        allDictionary = [:]
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        gildTheLilySwitch = (dictionary["with"] as? Bool) ?? false
        tableSkipModelCount = (dictionary["lab"] as? Int) ?? 0
        colorNumber = (dictionary["mini"] as? Double) ?? 0.0
        rangeText = dictionary["constraint"] as? String
        if let object = dictionary["ask"] as? [String] {
            eyeglassesArray = object
        }
        windowDictionary = dictionary["no"] as? [String: String]
        remoteContent = dictionary["bind"] as? String
        allDictionary = dictionary["moment"] as? [String: String]
    }

    func chokeReset() {
        gildTheLilySwitch = true
        tableSkipModelCount = 91
        colorNumber = 625.53
        rangeText = "name"
        eyeglassesArray = []
        windowDictionary = [:]
        remoteContent = "status"
        allDictionary = [:]
    }
}
