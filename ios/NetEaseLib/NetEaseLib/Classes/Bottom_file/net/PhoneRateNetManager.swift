import Foundation
class PhoneRateNetManager: CircleEmptyNetBase {
    class func requestPhotoSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        completeSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        textName: String,
        allSuccess successBlock: ((_ model: PhoneRateNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let disagreeDic: [AnyHashable: Any] = [
            "heightLock": textName,
        ]
        writeParameters(disagreeDic, success: { dic in
            if let successBlock = successBlock {
                let model = PhoneRateNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.timeScreenOff = dic?["timeScreenOff"] as? Bool
                model.statusSearchInterval = dic?["statusSearchInterval"] as? Double
                model.arrayHideDictionary = dic?["arrayHideDictionary"] as? [AnyHashable: Any]
                model.rubricDictionary = dic?["arrayHideDictionary"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        blockOff: Bool,
        objectInterval: Int,
        atGiftDictionary: [AnyHashable: Any],
        shadowSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let disagreeDic: [AnyHashable: Any] = [
            "moreIn": blockOff,
            "currentOn": objectInterval,
            "viewTo": atGiftDictionary,
        ]
        writeParameters(disagreeDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        panelNumber: Int,
        smartInterval: Double,
        valueViewContent: String,
        dataPlaceSuccess successBlock: ((_ model: PhoneRateNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var disagreeDic: [AnyHashable: Any] = [:]
        disagreeDic["from"] = panelNumber
        disagreeDic["name"] = smartInterval
        disagreeDic["detail"] = valueViewContent
        writeParameters(disagreeDic, success: { dic in
            if let successBlock = successBlock {
                let model = PhoneRateNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.timeScreenOff = dic?["timeScreenOff"] as? Bool
                model.statusSearchInterval = dic?["statusSearchInterval"] as? Double
                model.arrayHideDictionary = dic?["arrayHideDictionary"] as? [AnyHashable: Any]
                model.rubricDictionary = dic?["arrayHideDictionary"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func writeParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/play/with"
        CircleEmptyNetTool.get(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("with")"
                errorBlock(379, errorMessage)
            }
        })
    }

    class func pullMethod() -> NetNameMethed {
        return .post
    }

    class func completeSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/my/view"
        CircleEmptyNetTool.delete(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("title")"
                errorBlock(304, errorMessage)
            }
        })
    }
}