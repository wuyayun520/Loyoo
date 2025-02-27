
class SectionDataModel: CircleEmptyDataModelBase {
    var SectionData: [String: Any] = [:]
    var playerPathTotal = 0
    var backName = ""
    var nameOn = false
    var itemDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "Section"
    }

    override class func ignoreNames() -> [String]? {
        return [
            "playerPathTotal",
        ]
    }

    override class func fieldMapping() -> [String: String]? {
        return ["backName": "table"]
    }
}
