import Foundation
class CleanNetManager: CircleEmptyNetBase {
    class func requestTimeInputSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        emptyBlockSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        actionSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var conversationDic: [AnyHashable: Any] = [:]
        withTitleViewParameters(conversationDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        cannisterNumber: Int,
        collectionDictionary: [AnyHashable: Any],
        sexSuccess successBlock: ((_ model: CleanNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let conversationDic: [AnyHashable: Any] = [
            "change": cannisterNumber,
            "view": collectionDictionary,
        ]
        withTitleViewParameters(conversationDic, success: { dic in
            if let successBlock = successBlock {
                let model = CleanNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.pathSum = dic?["pathSum"] as? Int
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        dataMagnitude: Double,
        minSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var conversationDic: [AnyHashable: Any] = [:]
        conversationDic["colorStyle"] = dataMagnitude
        withTitleViewParameters(conversationDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["name"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        awardSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let conversationDic: [AnyHashable: Any] = [:]
        withTitleViewParameters(conversationDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        textQuantity: Double,
        omitArray: [String],
        scoopSuccess successBlock: ((_ model: CleanNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var conversationDic: [AnyHashable: Any] = [:]
        conversationDic["stack"] = textQuantity
        conversationDic["imageSimultaneously"] = omitArray
        withTitleViewParameters(conversationDic, success: { dic in
            if let successBlock = successBlock {
                let model = CleanNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.pathSum = dic?["pathSum"] as? Int
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func withTitleViewParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/top/view"
        CircleEmptyNetTool.url(
            urlString,
            method: boundaryMethod(),
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("room")"
                    errorBlock(554, errorMessage)
                }
            }
        )
    }

    class func boundaryMethod() -> NetNameMethed {
        return .delete
    }

    class func emptyBlockSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/item/invitation"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("of")"
                errorBlock(388, errorMessage)
            }
        })
    }
}