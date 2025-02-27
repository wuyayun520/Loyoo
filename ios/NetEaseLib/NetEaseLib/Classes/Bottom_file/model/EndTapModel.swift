import Foundation
class EndTapModel: NSObject, Codable {
    @objc dynamic var showSum = 0
    @objc dynamic var viewName: String?
    var sourcePlayerDoing = false
    var chemLabQuantity = 0
    var searchName: String?
    override init() {
        super.init()
        showSum = 85
        viewName = "label"
        sourcePlayerDoing = false
        chemLabQuantity = 61
        searchName = "head"
    }

    convenience init(dictionary: [String: Any]) {
        self.init()
        showSum = (dictionary["color"] as? Int) ?? 0
        viewName = dictionary["click"] as? String
        sourcePlayerDoing = (dictionary["player"] as? Bool) ?? false
        chemLabQuantity = (dictionary["view"] as? Int) ?? 0
        searchName = dictionary["background"] as? String
    }

    func titleReset() {
        showSum = 0
        viewName = ""
        sourcePlayerDoing = false
        chemLabQuantity = 0
        searchName = ""
    }
}
