import Foundation
class LeapOutNetModel: NSObject {
    var canDoing: Bool?
    var managerTitle: String?
    var userEnterEnable: Bool?
    var doingInterval: Double?
    var bitmapText: String?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
