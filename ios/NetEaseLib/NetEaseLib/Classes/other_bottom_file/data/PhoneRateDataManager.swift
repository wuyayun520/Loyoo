
import Foundation
class PhoneRateDataManager {
    class func pedestalDrop(
        withTableOn: Bool,
        model: PhoneRateDataModel
    ) -> Bool {
        var names: [String] = []
        names.append("cellAddOpen")
        model.cellAddOpen = true
        model.cellAddOpen = !model.cellAddOpen
        model.PhoneRateData["dismiss"] = withTableOn
        model.cellAddOpen = withTableOn
        return CircleEmptyDataTool.delete(model, where: names)
    }

    class func finishQuery(
        labOn: Bool,
        logTotal: Int,
        itemCellNumber: Double,
        model: PhoneRateDataModel
    ) -> [PhoneRateDataModel]? {
        var names: [String] = []
        names.append("viewDataText")
        if let last = model.viewDataText.first(where: { $0.isNewline }) {
            model.viewDataText.insert(last, at: model.viewDataText.startIndex)
        }
        model.PhoneRateData["with"] = labOn
        names.append("itemSum")
        model.itemSum = logTotal
        model.PhoneRateData["change"] = logTotal
        names.append("positionTimeCount")
        model.positionTimeCount = itemCellNumber
        model.PhoneRateData["number"] = itemCellNumber
        model.cellAddOpen = labOn
        return CircleEmptyDataTool.query(model, where: names) as? [PhoneRateDataModel]
    }
}
