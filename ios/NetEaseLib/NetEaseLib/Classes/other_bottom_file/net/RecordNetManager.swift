import Foundation
class RecordNetManager: CircleEmptyNetBase {
    class func requestShowSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        tabContentSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        tapArray: [String],
        imageWithSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var makeDic: [AnyHashable: Any] = [:]
        makeDic["locationView"] = tapArray
        timeParameters(makeDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        styleText: String,
        ofSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var makeDic: [AnyHashable: Any] = [:]
        makeDic["editView"] = styleText
        timeParameters(makeDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        warningTimeSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let makeDic: [AnyHashable: Any] = [:]
        timeParameters(makeDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["image"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        cleanCount: Int,
        popIconText: String,
        blockArray: [String],
        priceSuccess successBlock: ((_ model: RecordNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var makeDic: [AnyHashable: Any] = [:]
        makeDic["row"] = cleanCount
        makeDic["on"] = popIconText
        makeDic["input"] = blockArray
        timeParameters(makeDic, success: { dic in
            if let successBlock = successBlock {
                let model = RecordNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.addInputTotal = dic?["addInputTotal"] as? Double
                model.terraceContent = dic?["terraceContent"] as? String
                model.pickArray = dic?["pickArray"] as? [AnyHashable]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func timeParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/error/image"
        CircleEmptyNetTool.delete(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("view")"
                errorBlock(585, errorMessage)
            }
        })
    }

    class func oldMasterMethod() -> NetNameMethed {
        return .get
    }

    class func tabContentSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/with/view"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("item")"
                errorBlock(583, errorMessage)
            }
        })
    }
}