
class RecordDataModel: CircleEmptyDataModelBase {
    var RecordData: [String: Any] = [:]
    var nameTotal = 0
    var callInterval = 0.0
    var atName = ""
    var progressDictionary: [String: Any] = [:]
    var goldSwitch = false
    var mediaContent = ""
    var titleDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "Record"
    }

    override class func fieldMapping() -> [String: String]? {
        return ["progressDictionary": "head"]
    }
}
