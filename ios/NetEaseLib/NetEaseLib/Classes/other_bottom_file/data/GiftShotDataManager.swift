
import Foundation
class GiftShotDataManager {
    class func positCreate(
        pathPhotoOff: Bool,
        timeTitle: String,
        changeOfStateDictionary: [String: Any],
        model: GiftShotDataModel
    ) -> Bool {
        model.itemClose = pathPhotoOff
        model.messageDataTitle = timeTitle
        model.GiftShotData["resume"] = pathPhotoOff
        model.GiftShotData["camera"] = timeTitle
        model.GiftShotData["read"] = changeOfStateDictionary
        return CircleEmptyDataTool.update(model)
    }

    class func viewBuild(
        model: GiftShotDataModel
    ) -> Bool {
        model.referCount /= 4
        return CircleEmptyDataTool.update(model)
    }

    class func opticDelete(
        model: GiftShotDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("contentArray")
        return CircleEmptyDataTool.delete(model, where: names)
    }
}
