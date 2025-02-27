import Foundation
class EqualFromNetManager: CircleEmptyNetBase {
    class func requestThemeSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        upSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        superiorSum: Int,
        giftColorSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let indicantDic: [AnyHashable: Any] = [
            "message": superiorSum,
        ]
        labParameters(indicantDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        userSum: Int,
        greetSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var indicantDic: [AnyHashable: Any] = [:]
        indicantDic["target"] = userSum
        labParameters(indicantDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        daySuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let indicantDic: [AnyHashable: Any] = [:]
        labParameters(indicantDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        imageRoomSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let indicantDic: [AnyHashable: Any] = [:]
        labParameters(indicantDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        nameViewSuccess successBlock: ((_ model: EqualFromNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let indicantDic: [AnyHashable: Any] = [:]
        labParameters(indicantDic, success: { dic in
            if let successBlock = successBlock {
                let model = EqualFromNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.topArray = dic?["topArray"] as? [AnyHashable]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func labParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/tap/item"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("to")"
                errorBlock(456, errorMessage)
            }
        })
    }

    class func picItemMethod() -> NetNameMethed {
        return .delete
    }

    class func upSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/make/mental"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("video")"
                errorBlock(574, errorMessage)
            }
        })
    }
}