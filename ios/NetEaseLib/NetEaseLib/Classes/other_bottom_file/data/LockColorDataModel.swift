
class LockColorDataModel: CircleEmptyDataModelBase {
    var LockColorData: [String: Any] = [:]
    var tabTitleSum = 0
    var colorViewName = ""
    var pullBlockArray: [String] = []
    var phoneText = ""
    var feedbackCellDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "LockColor"
    }

    override class func ignoreNames() -> [String]? {
        return [
        ]
    }

    override class func fieldMapping() -> [String: String]? {
        return ["pullBlockArray": "with"]
    }
}
