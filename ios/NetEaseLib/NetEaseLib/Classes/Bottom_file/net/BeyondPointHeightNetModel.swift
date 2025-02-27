import Foundation
class BeyondPointHeightNetModel: NSObject {
    var headNameDoing: Bool?
    var totalTableMagnitude: Double?
    var juxtapositionName: String?
    var imageArray: [AnyHashable]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        imageArray = []
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
