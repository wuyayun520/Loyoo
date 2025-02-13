import Foundation
class PlayerReasonNetManager: CircleEmptyNetBase {
    class func requestShouldSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        cellSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        textOn: Bool,
        voiceNumber: Double,
        countArray: [String],
        pointSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let infoDic: [AnyHashable: Any] = [
            "image": textOn,
            "textRow": voiceNumber,
            "index": countArray,
        ]
        itemButtonParameters(infoDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        sprechstimmeClose: Bool,
        viewText: String,
        rationalMotiveSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let infoDic: [AnyHashable: Any] = [
            "fee": sprechstimmeClose,
            "sendCell": viewText,
        ]
        itemButtonParameters(infoDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["database"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func itemButtonParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/page/for"
        var header: [String: String] = [:]
        header["month"] = "%d"
        CircleEmptyNetTool.url(
            urlString,
            method: tableMethod(),
            header: header,
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("till")"
                    errorBlock(455, errorMessage)
                }
            }
        )
    }

    class func tableMethod() -> NetNameMethed {
        return .put
    }

    class func cellSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/view/balance"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("gift")"
                errorBlock(563, errorMessage)
            }
        })
    }
}