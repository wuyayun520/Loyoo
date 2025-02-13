import Foundation
class PackageNetManager: CircleEmptyNetBase {
    class func requestTotalMoreSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        positionSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        changeToQuantity: Int,
        statusOfSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var listDic: [AnyHashable: Any] = [:]
        listDic["toolLoad"] = changeToQuantity
        closeParameters(listDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        pathSwitch: Bool,
        deviceArray: [String],
        warningSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var listDic: [AnyHashable: Any] = [:]
        listDic["marginModel"] = pathSwitch
        listDic["appear"] = deviceArray
        closeParameters(listDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["from"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        itemMagnitude: Double,
        withText: String,
        exceptArray: [String],
        giftBagDictionary: [AnyHashable: Any],
        videoSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var listDic: [AnyHashable: Any] = [:]
        listDic["priceEnable"] = itemMagnitude
        listDic["country"] = withText
        listDic["remove"] = exceptArray
        listDic["modeHead"] = giftBagDictionary
        closeParameters(listDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func closeParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/bag/scope"
        CircleEmptyNetTool.delete(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("media")"
                errorBlock(366, errorMessage)
            }
        })
    }

    class func nameMethod() -> NetNameMethed {
        return .get
    }

    class func positionSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/image/time"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("action")"
                errorBlock(472, errorMessage)
            }
        })
    }
}