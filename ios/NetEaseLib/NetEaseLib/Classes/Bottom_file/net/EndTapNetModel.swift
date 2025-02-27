import Foundation
class EndTapNetModel: NSObject {
    var ofArray: [AnyHashable]?
    var sumAttentionOpen: Bool?
    var greetDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        ofArray = []
        greetDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
