import Foundation
class SectionNetModel: NSObject {
    var arrayLineName: String?
    var imageDictionary: [AnyHashable: Any]?
    var arrayOpen: Bool?
    var atSum: Double?
    var downDictionary: [AnyHashable: Any]?
    var code = 0
    var message: String?
    var data: [AnyHashable: Any]?
    override init() {
        super.init()
        imageDictionary = [:]
        downDictionary = [:]
    }

    func isSuccess() -> Bool {
        return code == 200
    }
}
