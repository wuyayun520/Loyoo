import Foundation
class PlayerReasonNetModel: NSObject {
    var loadBottomClose: Bool?
    var fromTotal: Int?
    var showCount: Double?
    var thumbArray: [AnyHashable]?
    var coordinateDictionary: [AnyHashable: Any]?
    var ballroomDoing: Bool?
    var nameTotal: Double?
    var giftMatchName: String?
    var awakeAppArray: [AnyHashable]?
    var appBroadDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        thumbArray = []
        coordinateDictionary = [:]
        awakeAppArray = []
        appBroadDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
