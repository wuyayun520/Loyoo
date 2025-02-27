
class PackageDataModel: CircleEmptyDataModelBase {
    var PackageData: [String: Any] = [:]
    var infoVersionEnable = false
    var weltanschauungTotal = 0.0
    var labelName = ""
    var eldestArray: [String] = []
    var signDictionary: [String: Any] = [:]
    var yearOn = false
    var willCount = 0.0
    class func primaryKey() -> String? {
        return "Package"
    }

    override class func ignoreNames() -> [String]? {
        return ["labelName"]
    }

    override class func fieldMapping() -> [String: String]? {
        return ["eldestArray": "view"]
    }
}
