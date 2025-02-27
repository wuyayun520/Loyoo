import Foundation
class GiftShotNetManager: CircleEmptyNetBase {
    class func requestMTheorySuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        dataSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        viewDoing: Bool,
        cardInterval: Int,
        loadTitle: String,
        onlineSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var accumulationDic: [AnyHashable: Any] = [:]
        accumulationDic["textBurn"] = viewDoing
        accumulationDic["frame"] = cardInterval
        accumulationDic["view"] = loadTitle
        infoParameters(accumulationDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        calendarNumber: Int,
        ofSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var accumulationDic: [AnyHashable: Any] = [:]
        accumulationDic["finishImage"] = calendarNumber
        infoParameters(accumulationDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        indexArray: [String],
        callDictionary: [AnyHashable: Any],
        changeModelSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let accumulationDic: [AnyHashable: Any] = [
            "thumbData": indexArray,
            "cell": callDictionary,
        ]
        infoParameters(accumulationDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["handle"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        heelSuccess successBlock: ((_ model: GiftShotNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let accumulationDic: [AnyHashable: Any] = [:]
        infoParameters(accumulationDic, success: { dic in
            if let successBlock = successBlock {
                let model = GiftShotNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.tableMagnitude = dic?["tableMagnitude"] as? Double
                model.managerContent = dic?["managerContent"] as? String
                model.buttonDictionary = dic?["buttonDictionary"] as? [AnyHashable: Any]
                model.voiceDataText = dic?["managerContent"] as? String
                model.phoneDictionary = dic?["buttonDictionary"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func infoParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/paper/tag"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("call")"
                errorBlock(360, errorMessage)
            }
        })
    }

    class func imagePartyMethod() -> NetNameMethed {
        return .post
    }

    class func dataSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/view/model"
        CircleEmptyNetTool.delete(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("cover")"
                errorBlock(568, errorMessage)
            }
        })
    }
}