import Foundation
class CleanNetModel: NSObject {
    var pathSum: Int?
    var createOpen: Bool?
    var harvestDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        harvestDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
