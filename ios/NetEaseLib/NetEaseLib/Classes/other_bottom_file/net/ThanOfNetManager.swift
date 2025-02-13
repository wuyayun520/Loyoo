import Foundation
class ThanOfNetManager: CircleEmptyNetBase {
    class func requestCoverTableSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        lickSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        halfSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let mainDic: [AnyHashable: Any] = [:]
        atTableParameters(mainDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        statusTotal: Double,
        infoArray: [String],
        noSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var mainDic: [AnyHashable: Any] = [:]
        mainDic["contentView"] = statusTotal
        mainDic["to"] = infoArray
        atTableParameters(mainDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["image"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        timeMagnitude: Int,
        shouldVoiceTitle: String,
        chapterSuccess successBlock: ((_ model: ThanOfNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var mainDic: [AnyHashable: Any] = [:]
        mainDic["modelIcon"] = timeMagnitude
        mainDic["conversationEqual"] = shouldVoiceTitle
        atTableParameters(mainDic, success: { dic in
            if let successBlock = successBlock {
                let model = ThanOfNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.equalClose = dic?["equalClose"] as? Bool
                model.titleQuantity = dic?["titleQuantity"] as? Double
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        nameNumber: Int,
        resignSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let mainDic: [AnyHashable: Any] = [
            "modelLeft": nameNumber,
        ]
        atTableParameters(mainDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        modelTotal: Int,
        giftArray: [String],
        layerExtendedSuccess successBlock: ((_ model: ThanOfNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var mainDic: [AnyHashable: Any] = [:]
        mainDic["makeCall"] = modelTotal
        mainDic["talkSend"] = giftArray
        atTableParameters(mainDic, success: { dic in
            if let successBlock = successBlock {
                let model = ThanOfNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.equalClose = dic?["equalClose"] as? Bool
                model.titleQuantity = dic?["titleQuantity"] as? Double
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func atTableParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/model/early"
        CircleEmptyNetTool.put(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("of")"
                errorBlock(314, errorMessage)
            }
        })
    }

    class func languageMethod() -> NetNameMethed {
        return .post
    }

    class func lickSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/file/of"
        CircleEmptyNetTool.get(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("with")"
                errorBlock(330, errorMessage)
            }
        })
    }
}