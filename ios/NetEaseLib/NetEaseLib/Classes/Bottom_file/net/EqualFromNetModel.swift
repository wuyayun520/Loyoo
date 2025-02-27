import Foundation
class EqualFromNetModel: NSObject {
    var topArray: [AnyHashable]?
    var commitClose: Bool?
    var withName: String?
    var titleDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        topArray = []
        titleDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
