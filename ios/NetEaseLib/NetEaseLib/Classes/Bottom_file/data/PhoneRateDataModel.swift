
class PhoneRateDataModel: CircleEmptyDataModelBase {
    var PhoneRateData: [String: Any] = [:]
    var itemSum = 0
    var positionTimeCount = 0.0
    var viewDataText = ""
    var itemArray: [String] = []
    var cellAddOpen = false
    class func primaryKey() -> String? {
        return "PhoneRate"
    }

    override class func ignoreNames() -> [String]? {
        return ["cellAddOpen"]
    }
}
