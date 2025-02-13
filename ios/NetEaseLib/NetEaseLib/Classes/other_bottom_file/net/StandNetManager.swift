import Foundation
class StandNetManager: CircleEmptyNetBase {
    class func requestNameSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        kindSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        tableItemDoing: Bool,
        upSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var showDic: [AnyHashable: Any] = [:]
        showDic["viewLab"] = tableItemDoing
        fromParameters(showDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        transitionClose: Bool,
        rubricMagnitude: Int,
        mediumDictionary: [AnyHashable: Any],
        bagSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var showDic: [AnyHashable: Any] = [:]
        showDic["edit"] = transitionClose
        showDic["resultPremium"] = rubricMagnitude
        showDic["rowView"] = mediumDictionary
        fromParameters(showDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        scaleOfMeasurementName: String,
        imageArray: [String],
        upWillDictionary: [AnyHashable: Any],
        ofSuccess successBlock: ((_ model: StandNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var showDic: [AnyHashable: Any] = [:]
        showDic["view"] = scaleOfMeasurementName
        showDic["toGame"] = imageArray
        showDic["upon"] = upWillDictionary
        fromParameters(showDic, success: { dic in
            if let successBlock = successBlock {
                let model = StandNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func fromParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/limit/model"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("voice")"
                errorBlock(351, errorMessage)
            }
        })
    }

    class func withMethod() -> NetNameMethed {
        return .delete
    }

    class func kindSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/view/table"
        CircleEmptyNetTool.delete(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("lab")"
                errorBlock(404, errorMessage)
            }
        })
    }
}