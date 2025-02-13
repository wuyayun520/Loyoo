import Foundation
class UpwardlyNetModel: NSObject {
    var skilledWorkerSum: Int?
    var labelName: String?
    var topArray: [AnyHashable]?
    var matchDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        topArray = []
        matchDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
