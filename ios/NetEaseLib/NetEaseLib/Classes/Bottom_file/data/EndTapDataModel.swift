
class EndTapDataModel: CircleEmptyDataModelBase {
    var EndTapData: [String: Any] = [:]
    var picTotal = 0
    var dataQuantityQuantity = 0.0
    var statusCellSwitch = false
    var databaseLoadTopText = ""
    var colorArray: [String] = []
    var rowModelDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "EndTap"
    }

    override class func fieldMapping() -> [String: String]? {
        return ["picTotal": "model"]
    }
}
