
class UpCommentDataModel: CircleEmptyDataModelBase {
    var UpCommentData: [String: Any] = [:]
    var makeQuantity = 0
    var imageDismissDictionary: [String: Any] = [:]
    var statusArray: [String] = []
    var addDictionary: [String: Any] = [:]
    class func primaryKey() -> String? {
        return "UpComment"
    }

    override class func ignoreNames() -> [String]? {
        return [
            "imageDismissDictionary",
        ]
    }
}
