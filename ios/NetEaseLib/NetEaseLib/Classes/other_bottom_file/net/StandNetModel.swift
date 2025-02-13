import Foundation
class StandNetModel: NSObject {
    var slabMagnitude: Double?
    var dismissTableContent: String?
    var collectionDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        collectionDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
