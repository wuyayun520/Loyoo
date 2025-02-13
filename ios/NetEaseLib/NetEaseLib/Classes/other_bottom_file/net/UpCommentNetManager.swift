import Foundation
class UpCommentNetManager: CircleEmptyNetBase {
    class func requestHideSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        noEmptySuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        backSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let genderIdentityDic: [AnyHashable: Any] = [:]
        buttonParameters(genderIdentityDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        pathSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var genderIdentityDic: [AnyHashable: Any] = [:]
        buttonParameters(genderIdentityDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["discourse"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        messageMagnitude: Double,
        subContent: String,
        totalimateDictionary: [AnyHashable: Any],
        statusLineGiftTableSuccess successBlock: ((_ model: UpCommentNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let genderIdentityDic: [AnyHashable: Any] = [
            "pull": messageMagnitude,
            "view": subContent,
            "with": totalimateDictionary,
        ]
        buttonParameters(genderIdentityDic, success: { dic in
            if let successBlock = successBlock {
                let model = UpCommentNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.beginOn = dic?["beginOn"] as? Bool
                model.canInterval = dic?["canInterval"] as? Double
                model.moonArray = dic?["moonArray"] as? [AnyHashable]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        mainSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var genderIdentityDic: [AnyHashable: Any] = [:]
        buttonParameters(genderIdentityDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["from"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        addSum: Double,
        vocalisationArray: [String],
        roomAddSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var genderIdentityDic: [AnyHashable: Any] = [:]
        genderIdentityDic["room"] = addSum
        genderIdentityDic["image"] = vocalisationArray
        buttonParameters(genderIdentityDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        fromMagnitude: Int,
        showSuccess successBlock: ((_ model: UpCommentNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var genderIdentityDic: [AnyHashable: Any] = [:]
        genderIdentityDic["viewDismiss"] = fromMagnitude
        buttonParameters(genderIdentityDic, success: { dic in
            if let successBlock = successBlock {
                let model = UpCommentNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.beginOn = dic?["beginOn"] as? Bool
                model.canInterval = dic?["canInterval"] as? Double
                model.moonArray = dic?["moonArray"] as? [AnyHashable]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func buttonParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/layer/error"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("page")"
                errorBlock(570, errorMessage)
            }
        })
    }

    class func sumroductoryMethod() -> NetNameMethed {
        return .delete
    }

    class func noEmptySuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/style/all"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("player")"
                errorBlock(368, errorMessage)
            }
        })
    }
}