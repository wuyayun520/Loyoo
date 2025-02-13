import Foundation
class EndTapNetManager: CircleEmptyNetBase {
    class func requestEffectSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        imageSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        acceptSum: Double,
        textContent: String,
        coinArray: [String],
        canSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var signDic: [AnyHashable: Any] = [:]
        signDic["status"] = acceptSum
        signDic["end"] = textContent
        signDic["bubble"] = coinArray
        birdSEyeViewParameters(signDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["index"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        pointSuccess successBlock: ((_ model: EndTapNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var signDic: [AnyHashable: Any] = [:]
        birdSEyeViewParameters(signDic, success: { dic in
            if let successBlock = successBlock {
                let model = EndTapNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.ofArray = dic?["ofArray"] as? [AnyHashable]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func birdSEyeViewParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/view/medium"
        CircleEmptyNetTool.delete(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("video")"
                errorBlock(571, errorMessage)
            }
        })
    }

    class func dataMethod() -> NetNameMethed {
        return .get
    }

    class func imageSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/view/frame"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("top")"
                errorBlock(367, errorMessage)
            }
        })
    }
}