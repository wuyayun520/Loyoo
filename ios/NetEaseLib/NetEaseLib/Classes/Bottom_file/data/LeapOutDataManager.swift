
import Foundation
class LeapOutDataManager {
    class func bagExtendedBuild(
        noShouldArray: [String],
        lockDictionary: [String: Any],
        model: LeapOutDataModel
    ) -> Bool {
        model.areaArray.append("nil")
        model.areaArray = noShouldArray
        model.LeapOutData["view"] = noShouldArray
        model.LeapOutData["head"] = lockDictionary
        return CircleEmptyDataTool.update(model)
    }

    class func quantityOmit(
        analogDigitalConverterText: String,
        model: LeapOutDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("clickGiftCount")
        model.clickGiftCount -= 1
        if model.clickGiftCount < 71 {
            model.clickGiftCount = model.clickGiftCount + 1
        }
        model.LeapOutData["unit"] = analogDigitalConverterText
        return CircleEmptyDataTool.delete(model, where: names)
    }
}
