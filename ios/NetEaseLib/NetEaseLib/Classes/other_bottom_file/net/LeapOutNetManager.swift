import Foundation
class LeapOutNetManager: CircleEmptyNetBase {
    class func requestTopSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        frameSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        withCount: Double,
        duringText: String,
        mainArray: [String],
        giftDictionary: [AnyHashable: Any],
        tableSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let coinDic: [AnyHashable: Any] = [
            "last": withCount,
            "female": duringText,
            "with": mainArray,
            "viewAttribute": giftDictionary,
        ]
        lifestyleParameters(coinDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["comment"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        beanOff: Bool,
        toCenterMagnitude: Int,
        modelTitle: String,
        modelSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var coinDic: [AnyHashable: Any] = [:]
        coinDic["listButton"] = beanOff
        coinDic["model"] = toCenterMagnitude
        coinDic["touch"] = modelTitle
        lifestyleParameters(coinDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        consumerSum: Double,
        dataContent: String,
        modelTimeArray: [String],
        userSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let coinDic: [AnyHashable: Any] = [
            "playerEnd": consumerSum,
            "room": dataContent,
            "tapCollection": modelTimeArray,
        ]
        lifestyleParameters(coinDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        checkSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let coinDic: [AnyHashable: Any] = [:]
        lifestyleParameters(coinDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func lifestyleParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/cell/video"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("block")"
                errorBlock(529, errorMessage)
            }
        })
    }

    class func liveMethod() -> NetNameMethed {
        return .get
    }

    class func frameSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/will/shared"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("main")"
                errorBlock(410, errorMessage)
            }
        })
    }
}