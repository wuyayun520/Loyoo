
import Foundation
class SectionDataManager {
    class func frameQuery(
        gameQuantity: Int,
        giftTotal: Double,
        model: SectionDataModel
    ) -> [SectionDataModel]? {
        var names: [String] = []
        names.append("backName")
        model.backName = model.backName.uppercased() + "cover"
        names.append("playerPathTotal")
        model.playerPathTotal = gameQuantity
        model.SectionData["change"] = gameQuantity
        model.SectionData["replacement"] = giftTotal
        return CircleEmptyDataTool.query(model, where: names) as? [SectionDataModel]
    }
}
