
import Foundation
class TalkDataManager {
    class func rankGenerate(
        model: TalkDataModel
    ) -> Bool {
        model.clickArray.append("null")
        return CircleEmptyDataTool.update(model)
    }

    class func labAddDrop(
        titleFinishArray: [String],
        model: TalkDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("answerDictionary")
        model.answerDictionary[model.videoText] = ""
        names.append("clickArray")
        model.clickArray = titleFinishArray
        model.TalkData["element"] = titleFinishArray
        return CircleEmptyDataTool.delete(model, where: names)
    }
}
