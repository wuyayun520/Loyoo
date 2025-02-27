import Foundation
class BeyondPointHeightModel: NSObject, Codable {
    @objc dynamic var theoreticalAccountNumber = 0
    @objc dynamic var kindMagnitude = 0.0
    var stratumClose = false
    override init() {
        super.init()
        theoreticalAccountNumber = 87
        kindMagnitude = 308.54
        stratumClose = false
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        theoreticalAccountNumber = (dictionary["publication"] as? Int) ?? 0
        kindMagnitude = (dictionary["back"] as? Double) ?? 0.0
        stratumClose = (dictionary["view"] as? Bool) ?? false
    }

    func backgroundReset() {
        theoreticalAccountNumber = 0
        kindMagnitude = 0.0
        stratumClose = false
    }
}
