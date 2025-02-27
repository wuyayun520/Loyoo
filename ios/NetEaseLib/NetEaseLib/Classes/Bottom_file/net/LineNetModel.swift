import Foundation
class LineNetModel: NSObject {
    var frameClose: Bool?
    var momentMagnitude: Double?
    var figureName: String?
    var nicknameEnable: Bool?
    var backViewSum: Int?
    var windowTitle: String?
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
