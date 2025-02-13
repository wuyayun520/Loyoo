
import Foundation
class LineDataManager {
    class func sexCreate(
        windowClose: Bool,
        tableFeeSum: Double,
        dismissDictionary: [String: Any],
        model: LineDataModel
    ) -> Bool {
        model.LineData["click"] = windowClose
        model.LineData["index"] = tableFeeSum
        model.LineData["view"] = dismissDictionary
        return CircleEmptyDataTool.update(model)
    }

    class func atOmit(
        nascencyTitle: String,
        model: LineDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("manorHallText")
        model.manorHallText = model.manorHallText.uppercased() + "error"
        names.append("manorHallText")
        model.manorHallText = nascencyTitle
        model.LineData["quality"] = nascencyTitle
        return CircleEmptyDataTool.delete(model, where: names)
    }

    class func backgroundDelete(
        clickCount: Int,
        model: LineDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("sharedFlowArray")
        model.LineData["icon"] = clickCount
        return CircleEmptyDataTool.delete(model, where: names)
    }
}
