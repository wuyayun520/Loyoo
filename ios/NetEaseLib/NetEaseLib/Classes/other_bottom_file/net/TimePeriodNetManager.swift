import Foundation
class TimePeriodNetManager: CircleEmptyNetBase {
    class func requestStyleNeedSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        burnSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        dismissNumber: Double,
        requestArray: [String],
        effectSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var handleDic: [AnyHashable: Any] = [:]
        handleDic["photo"] = dismissNumber
        handleDic["player"] = requestArray
        mainParameters(handleDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        elementDictionary: [AnyHashable: Any],
        mainSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let handleDic: [AnyHashable: Any] = [
            "tap": elementDictionary,
        ]
        mainParameters(handleDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        areaText: String,
        exampleSuccess successBlock: ((_ model: TimePeriodNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var handleDic: [AnyHashable: Any] = [:]
        handleDic["willCell"] = areaText
        mainParameters(handleDic, success: { dic in
            if let successBlock = successBlock {
                let model = TimePeriodNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.principalOpen = dic?["principalOpen"] as? Bool
                model.giftAppCount = dic?["giftAppCount"] as? Double
                model.meText = dic?["meText"] as? String
                model.iconCount = dic?["giftAppCount"] as? Double
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        entitleDictionary: [AnyHashable: Any],
        headSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let handleDic: [AnyHashable: Any] = [
            "title": entitleDictionary,
        ]
        mainParameters(handleDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        viewOff: Bool,
        phaseOfTheMoonInterval: Int,
        nameArray: [String],
        bindSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var handleDic: [AnyHashable: Any] = [:]
        handleDic["view"] = viewOff
        handleDic["with"] = phaseOfTheMoonInterval
        handleDic["viewOf"] = nameArray
        mainParameters(handleDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        rowEnable: Bool,
        themeArray: [String],
        columnSuccess successBlock: ((_ model: TimePeriodNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let handleDic: [AnyHashable: Any] = [
            "cameraView": rowEnable,
            "timeList": themeArray,
        ]
        mainParameters(handleDic, success: { dic in
            if let successBlock = successBlock {
                let model = TimePeriodNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.principalOpen = dic?["principalOpen"] as? Bool
                model.giftAppCount = dic?["giftAppCount"] as? Double
                model.meText = dic?["meText"] as? String
                model.iconCount = dic?["giftAppCount"] as? Double
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func mainParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/message/model"
        CircleEmptyNetTool.post(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("game")"
                errorBlock(454, errorMessage)
            }
        })
    }

    class func ofMethod() -> NetNameMethed {
        return .post
    }

    class func burnSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/back/card"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("card")"
                errorBlock(529, errorMessage)
            }
        })
    }
}