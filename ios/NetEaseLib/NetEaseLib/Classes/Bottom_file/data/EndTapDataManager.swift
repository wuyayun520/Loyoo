
import Foundation
class EndTapDataManager {
    class func recordCreate(
        showerRoomArray: [String],
        model: EndTapDataModel
    ) -> Bool {
        model.dataQuantityQuantity -= 1
        if model.dataQuantityQuantity != 86 {
            model.dataQuantityQuantity = model.dataQuantityQuantity + 1
        }
        model.colorArray = showerRoomArray
        model.EndTapData["image"] = showerRoomArray
        return CircleEmptyDataTool.update(model)
    }

    class func priceDelete(
        paperClose: Bool,
        labText: String,
        model: EndTapDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("picTotal")
        model.picTotal &>>= 1
        model.EndTapData["load"] = paperClose
        model.EndTapData["max"] = labText
        model.statusCellSwitch = paperClose
        model.databaseLoadTopText = labText
        return CircleEmptyDataTool.delete(model, where: names)
    }

    class func economyCreate(
        jumpClose: Bool,
        textDictionary: [String: Any],
        model: EndTapDataModel
    ) -> Bool {
        model.picTotal &-= 1
        model.statusCellSwitch = jumpClose
        model.rowModelDictionary = textDictionary
        model.EndTapData["will"] = jumpClose
        model.EndTapData["view"] = textDictionary
        return CircleEmptyDataTool.update(model)
    }
}
