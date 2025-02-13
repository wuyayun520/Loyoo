
class UpwardlyDataModel: CircleEmptyDataModelBase {
    var UpwardlyData: [String: Any] = [:]
    var freeTitle = ""
    var screenClose = false
    var callButtonQuantity = 0
    var delayProcessText = ""
    class func primaryKey() -> String? {
        return "Upwardly"
    }

    override class func ignoreNames() -> [String]? {
        return [
            "freeTitle",
        ]
    }
}
