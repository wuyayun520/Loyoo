import Foundation
class ViewBarNetManager: CircleEmptyNetBase {
    class func requestHeadSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        viewSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        cancelSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let frameCurrentLoadDic: [AnyHashable: Any] = [:]
        miniCellParameters(frameCurrentLoadDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        frameSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let frameCurrentLoadDic: [AnyHashable: Any] = [:]
        miniCellParameters(frameCurrentLoadDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["white"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        damageDoing: Bool,
        sharedTitle: String,
        renegeSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var frameCurrentLoadDic: [AnyHashable: Any] = [:]
        frameCurrentLoadDic["viewCopy"] = damageDoing
        frameCurrentLoadDic["push"] = sharedTitle
        miniCellParameters(frameCurrentLoadDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        scaleOfMeasurementRequestTotal: Int,
        appDictionary: [AnyHashable: Any],
        jumpSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let frameCurrentLoadDic: [AnyHashable: Any] = [
            "sign": scaleOfMeasurementRequestTotal,
            "model": appDictionary,
        ]
        miniCellParameters(frameCurrentLoadDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        taskEffectQuantity: Int,
        rowArray: [String],
        itemSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var frameCurrentLoadDic: [AnyHashable: Any] = [:]
        frameCurrentLoadDic["followingText"] = taskEffectQuantity
        frameCurrentLoadDic["view"] = rowArray
        miniCellParameters(frameCurrentLoadDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["empty"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func miniCellParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/status/table"
        CircleEmptyNetTool.url(
            urlString,
            method: inputRowMethod(),
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("length")"
                    errorBlock(472, errorMessage)
                }
            }
        )
    }

    class func inputRowMethod() -> NetNameMethed {
        return .post
    }

    class func viewSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/row/at"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("bean")"
                errorBlock(566, errorMessage)
            }
        })
    }
}