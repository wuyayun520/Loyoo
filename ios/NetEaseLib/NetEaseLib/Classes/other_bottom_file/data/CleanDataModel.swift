
class CleanDataModel: CircleEmptyDataModelBase {
    var CleanData: [String: Any] = [:]
    var startMagnitude = 0
    var itemUserArray: [String] = []
    class func primaryKey() -> String? {
        return "Clean"
    }

    override class func ignoreNames() -> [String]? {
        return [
        ]
    }
}
