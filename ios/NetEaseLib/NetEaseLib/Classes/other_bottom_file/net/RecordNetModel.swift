import Foundation
class RecordNetModel: NSObject {
    var addInputTotal: Double?
    var terraceContent: String?
    var pickArray: [AnyHashable]?
    var signEnable: Bool?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        pickArray = []
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
