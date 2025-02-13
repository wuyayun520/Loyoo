import Foundation
class ThanOfNetModel: NSObject {
    var equalClose: Bool?
    var titleQuantity: Double?
    var userName: String?
    var blockArray: [AnyHashable]?
    var frameDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        blockArray = []
        frameDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
