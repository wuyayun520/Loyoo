import Foundation
class LineNetManager: CircleEmptyNetBase {
    class func requestSearchedIndexSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        progressSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        limitAddName: String,
        countervalArray: [String],
        cellNeedDictionary: [AnyHashable: Any],
        roomCompleteSuccess successBlock: ((_ model: LineNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let circumferenceDic: [AnyHashable: Any] = [
            "component": limitAddName,
            "imageShow": countervalArray,
            "taskLoad": cellNeedDictionary,
        ]
        doingParameters(circumferenceDic, success: { dic in
            if let successBlock = successBlock {
                let model = LineNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.frameClose = dic?["frameClose"] as? Bool
                model.momentMagnitude = dic?["momentMagnitude"] as? Double
                model.figureName = dic?["figureName"] as? String
                model.nicknameEnable = dic?["frameClose"] as? Bool
                model.windowTitle = dic?["figureName"] as? String
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        dataSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let circumferenceDic: [AnyHashable: Any] = [:]
        doingParameters(circumferenceDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        statuteTitleSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let circumferenceDic: [AnyHashable: Any] = [:]
        doingParameters(circumferenceDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        renderEnable: Bool,
        tableName: String,
        constituentMaxSuccess successBlock: ((_ model: LineNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let circumferenceDic: [AnyHashable: Any] = [
            "forPull": renderEnable,
            "miniEqual": tableName,
        ]
        doingParameters(circumferenceDic, success: { dic in
            if let successBlock = successBlock {
                let model = LineNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.frameClose = dic?["frameClose"] as? Bool
                model.momentMagnitude = dic?["momentMagnitude"] as? Double
                model.figureName = dic?["figureName"] as? String
                model.nicknameEnable = dic?["frameClose"] as? Bool
                model.windowTitle = dic?["figureName"] as? String
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func doingParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/menu/content"
        CircleEmptyNetTool.url(
            urlString,
            method: dataColorMethod(),
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("view")"
                    errorBlock(493, errorMessage)
                }
            }
        )
    }

    class func dataColorMethod() -> NetNameMethed {
        return .delete
    }

    class func progressSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/block/adjust"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("array")"
                errorBlock(342, errorMessage)
            }
        })
    }
}