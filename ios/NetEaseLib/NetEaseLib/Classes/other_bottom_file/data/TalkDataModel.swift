
class TalkDataModel: CircleEmptyDataModelBase {
    var TalkData: [String: Any] = [:]
    var endCount = 0
    var clickArray: [String] = []
    var dismissDictionary: [String: Any] = [:]
    var changeEnable = false
    var videoText = ""
    var answerDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "Talk"
    }

    override class func ignoreNames() -> [String]? {
        return ["answerDictionary"]
    }

    override class func fieldMapping() -> [String: String]? {
        return ["answerDictionary": "text"]
    }
}
