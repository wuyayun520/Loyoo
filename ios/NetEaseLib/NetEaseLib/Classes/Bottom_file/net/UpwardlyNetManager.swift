import Foundation
class UpwardlyNetManager: CircleEmptyNetBase {
    class func requestModelVideoSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        masterSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        workSwitch: Bool,
        postVoiceCount: Int,
        regardArray: [String],
        randomSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let norDic: [AnyHashable: Any] = [
            "viewIndex": workSwitch,
            "up": postVoiceCount,
            "rank": regardArray,
        ]
        loadParameters(norDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        blockSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var norDic: [AnyHashable: Any] = [:]
        loadParameters(norDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        rowEnable: Bool,
        receiveMagnitude: Int,
        cancelArray: [String],
        scaleValueDictionary: [AnyHashable: Any],
        countAtSuccess successBlock: ((_ model: UpwardlyNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var norDic: [AnyHashable: Any] = [:]
        norDic["tableInfo"] = rowEnable
        norDic["imageShow"] = receiveMagnitude
        norDic["viewAt"] = cancelArray
        norDic["moreSpend"] = scaleValueDictionary
        loadParameters(norDic, success: { dic in
            if let successBlock = successBlock {
                let model = UpwardlyNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        freeAddSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var norDic: [AnyHashable: Any] = [:]
        loadParameters(norDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        contentName: String,
        emptyTableArray: [String],
        micSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let norDic: [AnyHashable: Any] = [
            "viewPlayer": contentName,
            "partAge": emptyTableArray,
        ]
        loadParameters(norDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func loadParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/yesterday/view"
        CircleEmptyNetTool.url(
            urlString,
            method: subMethod(),
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("list")"
                    errorBlock(403, errorMessage)
                }
            }
        )
    }

    class func subMethod() -> NetNameMethed {
        return .post
    }

    class func masterSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/load/view"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("back")"
                errorBlock(476, errorMessage)
            }
        })
    }
}