
class LeapOutDataModel: CircleEmptyDataModelBase {
    var LeapOutData: [String: Any] = [:]
    var imageQuantity = 0.0
    var devoteManagerOn = false
    var clickGiftCount = 0.0
    var areaArray: [String] = []
    class func primaryKey() -> String? {
        return "LeapOut"
    }

    override class func ignoreNames() -> [String]? {
        return [
            "areaArray",
        ]
    }

    override class func fieldMapping() -> [String: String]? {
        return ["clickGiftCount": "normal"]
    }
}
