import Foundation
class LockColorNetManager: CircleEmptyNetBase {
    class func requestQueryTaskSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        titleSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        callOff: Bool,
        picSum: Int,
        workSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let gestureDic: [AnyHashable: Any] = [
            "call": callOff,
            "buttonData": picSum,
        ]
        takeUpParameters(gestureDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        byQuantity: Int,
        spectrumSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let gestureDic: [AnyHashable: Any] = [
            "mini": byQuantity,
        ]
        takeUpParameters(gestureDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["event"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        userSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var gestureDic: [AnyHashable: Any] = [:]
        takeUpParameters(gestureDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func takeUpParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/pull/view"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("video")"
                errorBlock(306, errorMessage)
            }
        })
    }

    class func nameMethod() -> NetNameMethed {
        return .get
    }

    class func titleSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/constraint/add"
        CircleEmptyNetTool.delete(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("data")"
                errorBlock(487, errorMessage)
            }
        })
    }
}