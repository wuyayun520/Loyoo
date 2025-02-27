
class PlayerReasonDataModel: CircleEmptyDataModelBase {
    var PlayerReasonData: [String: Any] = [:]
    var cancelOpen = false
    var handleSum = 0.0
    var infoArray: [String] = []
    var appearSum = 0.0
    class func primaryKey() -> String? {
        return "PlayerReason"
    }
}
