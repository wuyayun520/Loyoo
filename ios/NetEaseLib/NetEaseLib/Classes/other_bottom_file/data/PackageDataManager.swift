
import Foundation
class PackageDataManager {
    class func toQuery(
        listenArray: [String],
        model: PackageDataModel
    ) -> [PackageDataModel]? {
        var names: [String] = []
        names.append("yearOn")
        model.yearOn = false
        names.append("eldestArray")
        model.eldestArray = listenArray
        model.PackageData["display"] = listenArray
        return CircleEmptyDataTool.query(model, where: names) as? [PackageDataModel]
    }

    class func viewSave(
        byOpen: Bool,
        pushPlayTitle: String,
        model: PackageDataModel
    ) -> Bool {
        model.infoVersionEnable = true
        model.infoVersionEnable = !model.infoVersionEnable
        model.infoVersionEnable = byOpen
        model.labelName = pushPlayTitle
        model.yearOn = byOpen
        model.PackageData["show"] = byOpen
        model.PackageData["selected"] = pushPlayTitle
        return CircleEmptyDataTool.update(model)
    }

    class func leaseGiverDrop(
        model: PackageDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("yearOn")
        model.yearOn = !model.yearOn
        return CircleEmptyDataTool.delete(model, where: names)
    }
}
