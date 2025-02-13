import Foundation
class TalkNetManager: CircleEmptyNetBase {
    class func requestBlockSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        videoSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        sectionText: String,
        startLocalDictionary: [AnyHashable: Any],
        loadSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let contentDic: [AnyHashable: Any] = [
            "socialPortion": sectionText,
            "on": startLocalDictionary,
        ]
        executeParameters(contentDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["view"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        styleSwitch: Bool,
        endQuantity: Double,
        constraintArray: [String],
        loadDictionary: [AnyHashable: Any],
        instanceSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var contentDic: [AnyHashable: Any] = [:]
        contentDic["leftModel"] = styleSwitch
        contentDic["kind"] = endQuantity
        contentDic["statusStack"] = constraintArray
        contentDic["viewGesture"] = loadDictionary
        executeParameters(contentDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        valueCount: Double,
        startName: String,
        runDictionary: [AnyHashable: Any],
        consciousSuccess successBlock: ((_ model: TalkNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var contentDic: [AnyHashable: Any] = [:]
        contentDic["number"] = valueCount
        contentDic["plusIn"] = startName
        contentDic["tableLab"] = runDictionary
        executeParameters(contentDic, success: { dic in
            if let successBlock = successBlock {
                let model = TalkNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.mapTotal = dic?["mapTotal"] as? Int
                model.tableInvitationModelText = dic?["tableInvitationModelText"] as? String
                model.zapArray = dic?["zapArray"] as? [AnyHashable]
                model.sizeMediumTitle = dic?["tableInvitationModelText"] as? String
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        titleSum: Int,
        valueArray: [String],
        pictureSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var contentDic: [AnyHashable: Any] = [:]
        contentDic["noticeTable"] = titleSum
        contentDic["manager"] = valueArray
        executeParameters(contentDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func executeParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/data/video"
        CircleEmptyNetTool.url(
            urlString,
            method: finishMethod(),
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("segment")"
                    errorBlock(331, errorMessage)
                }
            }
        )
    }

    class func finishMethod() -> NetNameMethed {
        return .put
    }

    class func videoSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/range/view"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("table")"
                errorBlock(306, errorMessage)
            }
        })
    }
}