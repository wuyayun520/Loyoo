import Foundation
class LockColorNetModel: NSObject {
    var dissertateOn: Bool?
    var numberMagnitude: Int?
    var freeArray: [AnyHashable]?
    var compartmentDictionary: [AnyHashable: Any]?
    var itemSwitch: Bool?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        freeArray = []
        compartmentDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
