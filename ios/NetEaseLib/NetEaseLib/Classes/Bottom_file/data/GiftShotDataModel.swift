
class GiftShotDataModel: CircleEmptyDataModelBase {
    var GiftShotData: [String: Any] = [:]
    var electronicNameArray: [String] = []
    var itemClose = false
    var referCount = 0.0
    var messageDataTitle = ""
    var contentArray: [String] = []
    class func primaryKey() -> String? {
        return "GiftShot"
    }
}
