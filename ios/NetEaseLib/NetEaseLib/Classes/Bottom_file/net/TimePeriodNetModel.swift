import Foundation
class TimePeriodNetModel: NSObject {
    var principalOpen: Bool?
    var giftAppCount: Double?
    var meText: String?
    var iconCount: Double?
    var progressArray: [AnyHashable]?
    var tableDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        progressArray = []
        tableDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
