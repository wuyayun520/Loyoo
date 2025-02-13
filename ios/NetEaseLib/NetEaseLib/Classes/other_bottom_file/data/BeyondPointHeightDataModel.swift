
class BeyondPointHeightDataModel: CircleEmptyDataModelBase {
    var BeyondPointHeightData: [String: Any] = [:]
    var equalEnable = false
    var dignityContent = ""
    var awakeDictionary: [String: Any] = [:]
    var shieldSwitch = false
    var downwardlySum = 0
    var userTotal = 0.0
    var gestureTitle = ""
    var loadDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "BeyondPointHeight"
    }

    override class func fieldMapping() -> [String: String]? {
        return [
            "downwardlySum": "call",
            "userTotal": "empty",
        ]
    }
}
