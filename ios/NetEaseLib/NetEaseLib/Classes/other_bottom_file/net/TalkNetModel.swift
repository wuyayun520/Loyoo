import Foundation
class TalkNetModel: NSObject {
    var mapTotal: Int?
    var tableInvitationModelText: String?
    var zapArray: [AnyHashable]?
    var sizeMediumTitle: String?
    var labelPriceDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        zapArray = []
        labelPriceDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
