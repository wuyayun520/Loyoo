import Foundation
class PackageNetModel: NSObject {
    var showOpen: Bool?
    var partBagNumber: Double?
    var premiumNumber: Double?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
