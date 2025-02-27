
class StandDataModel: CircleEmptyDataModelBase {
    var StandData: [String: Any] = [:]
    var squareBlockEnable = false
    var endInterval = 0
    var commentInterval = 0.0
    var againQuantity = 0
    var periodOfTimeContent = ""
    class func primaryKey() -> String? {
        return "Stand"
    }
}
