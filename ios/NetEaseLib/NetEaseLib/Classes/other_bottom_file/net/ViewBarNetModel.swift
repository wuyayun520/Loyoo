import Foundation
class ViewBarNetModel: NSObject {
    var nameSwitch: Bool?
    var mediumInfoDictionary: [AnyHashable: Any]?
    var withDoing: Bool?
    var tableDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        mediumInfoDictionary = [:]
        tableDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
