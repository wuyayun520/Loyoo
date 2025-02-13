
import Foundation
class ThanOfDataManager {
    class func rangeRemove(
        model: ThanOfDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("birthdayTitle")
        model.birthdayTitle = model.birthdayTitle.capitalized + "at"
        return CircleEmptyDataTool.delete(model, where: names)
    }

    class func fillErrorBuild(
        canDoing: Bool,
        addViewNumber: Double,
        rowHeadDictionary: [String: Any],
        model: ThanOfDataModel
    ) -> Bool {
        model.videoImageBetweenSum += 1
        if Int(model.videoImageBetweenSum) > -49 {
            model.videoImageBetweenSum = model.videoImageBetweenSum - 1
        }
        model.draftNameOff = canDoing
        model.frameMagnitude = addViewNumber
        model.completeDoing = canDoing
        model.magnitudeDictionary = rowHeadDictionary
        model.ThanOfData["rank"] = canDoing
        model.ThanOfData["render"] = addViewNumber
        model.ThanOfData["before"] = rowHeadDictionary
        return CircleEmptyDataTool.update(model)
    }

    class func writeRemove(
        indexSwitch: Bool,
        downInputMagnitude: Double,
        model: ThanOfDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("draftNameOff")
        model.draftNameOff = true
        names.append("draftNameOff")
        model.draftNameOff = indexSwitch
        model.ThanOfData["red"] = indexSwitch
        names.append("frameMagnitude")
        model.frameMagnitude = downInputMagnitude
        model.ThanOfData["path"] = downInputMagnitude
        model.completeDoing = indexSwitch
        return CircleEmptyDataTool.delete(model, where: names)
    }

    class func changeDisappearCheck(
        appearMagnitude: Double,
        atDictionary: [String: Any],
        model: ThanOfDataModel
    ) -> [ThanOfDataModel]? {
        var names: [String] = []
        names.append("magnitudeDictionary")
        names.append("frameMagnitude")
        model.frameMagnitude = appearMagnitude
        model.ThanOfData["selected"] = appearMagnitude
        model.ThanOfData["temp"] = atDictionary
        model.magnitudeDictionary = atDictionary
        return CircleEmptyDataTool.query(model, where: names) as? [ThanOfDataModel]
    }
}
