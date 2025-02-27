import Foundation
class UpCommentNetModel: NSObject {
    var beginOn: Bool?
    var canInterval: Double?
    var moonArray: [AnyHashable]?
    var volitionInterval: Int?
    var withStarDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        moonArray = []
        withStarDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
