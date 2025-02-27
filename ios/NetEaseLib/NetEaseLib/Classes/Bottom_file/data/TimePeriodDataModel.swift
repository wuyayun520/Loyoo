
class TimePeriodDataModel: CircleEmptyDataModelBase {
    var TimePeriodData: [String: Any] = [:]
    var frameClose = false
    var ofModelSum = 0
    var whiteClose = false
    var viewMagnitude = 0.0
    class func primaryKey() -> String? {
        return "TimePeriod"
    }

    override class func ignoreNames() -> [String]? {
        return ["frameClose"]
    }

    override class func fieldMapping() -> [String: String]? {
        return ["whiteClose": "exhibit"]
    }
}
