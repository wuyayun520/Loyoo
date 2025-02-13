import Foundation
class PhoneRateNetModel: NSObject {
    var timeScreenOff: Bool?
    var statusSearchInterval: Double?
    var arrayHideDictionary: [AnyHashable: Any]?
    var liveRequestTotal: Int?
    var inviteTimeArray: [AnyHashable]?
    var rubricDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        arrayHideDictionary = [:]
        inviteTimeArray = []
        rubricDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
