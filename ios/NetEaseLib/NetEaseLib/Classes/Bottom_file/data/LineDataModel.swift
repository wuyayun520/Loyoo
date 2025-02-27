
class LineDataModel: CircleEmptyDataModelBase {
    var LineData: [String: Any] = [:]
    var manorHallText = ""
    var dartPlayerArray: [String] = []
    var sharedFlowArray: [String] = []
    class func primaryKey() -> String? {
        return "Line"
    }
}
