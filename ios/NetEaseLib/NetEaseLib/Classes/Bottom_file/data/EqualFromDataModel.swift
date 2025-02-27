
class EqualFromDataModel: CircleEmptyDataModelBase {
    var EqualFromData: [String: Any] = [:]
    var sumPicCount = 0.0
    var progressArray: [String] = []
    var frameStyleDictionary: [String: Any] = [:]
    var willTotal = 0
    var iconTitle = ""
    var biologyLaboratoryArray: [String] = []
    class func primaryKey() -> String? {
        return "EqualFrom"
    }

    override class func ignoreNames() -> [String]? {
        return ["willTotal"]
    }

    override class func fieldMapping() -> [String: String]? {
        return [
            "iconTitle": "time",
            "biologyLaboratoryArray": "empty",
        ]
    }
}
