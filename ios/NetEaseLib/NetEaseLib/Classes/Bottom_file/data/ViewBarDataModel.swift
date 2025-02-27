
class ViewBarDataModel: CircleEmptyDataModelBase {
    var ViewBarData: [String: Any] = [:]
    var textSwitch = false
    var deletePlayerInterval = 0.0
    var copernicanSystemTitle = ""
    var inviteTapEnable = false
    var keepQuantity = 0
    var equalitySum = 0.0
    class func primaryKey() -> String? {
        return "ViewBar"
    }

    override class func ignoreNames() -> [String]? {
        return [
            "copernicanSystemTitle",
        ]
    }
}
