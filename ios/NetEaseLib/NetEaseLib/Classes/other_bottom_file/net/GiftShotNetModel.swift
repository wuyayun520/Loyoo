import Foundation
class GiftShotNetModel: NSObject {
    var tableMagnitude: Double?
    var managerContent: String?
    var buttonDictionary: [AnyHashable: Any]?
    var voiceDataText: String?
    var phoneDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        buttonDictionary = [:]
        phoneDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
