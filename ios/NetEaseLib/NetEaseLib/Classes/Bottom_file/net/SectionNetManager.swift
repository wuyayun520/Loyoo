import Foundation
class SectionNetManager: CircleEmptyNetBase {
    class func requestCellSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        standingSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        managerTimeCount: Double,
        noteContent: String,
        clickArray: [String],
        tableDictionary: [AnyHashable: Any],
        turkeySuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let stopDic: [AnyHashable: Any] = [
            "nearAlong": managerTimeCount,
            "item": noteContent,
            "titleView": clickArray,
            "data": tableDictionary,
        ]
        videoParameters(stopDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        arrayWithSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var stopDic: [AnyHashable: Any] = [:]
        videoParameters(stopDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["total"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        towardMagnitude: Int,
        lastMagnitude: Double,
        lineArray: [String],
        observeTipSuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var stopDic: [AnyHashable: Any] = [:]
        stopDic["detail"] = towardMagnitude
        stopDic["labUser"] = lastMagnitude
        stopDic["numberClose"] = lineArray
        videoParameters(stopDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        bruteVideoMagnitude: Double,
        afterRenderName: String,
        theoryDictionary: [AnyHashable: Any],
        telecastingSuccess successBlock: ((_ model: SectionNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var stopDic: [AnyHashable: Any] = [:]
        stopDic["frameSuper"] = bruteVideoMagnitude
        stopDic["view"] = afterRenderName
        stopDic["cover"] = theoryDictionary
        videoParameters(stopDic, success: { dic in
            if let successBlock = successBlock {
                let model = SectionNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.arrayLineName = dic?["arrayLineName"] as? String
                model.imageDictionary = dic?["imageDictionary"] as? [AnyHashable: Any]
                model.downDictionary = dic?["imageDictionary"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func request(
        userPageSwitch: Bool,
        roomCount: Double,
        castArray: [String],
        collectionDictionary: [AnyHashable: Any],
        activitySuccess successBlock: (() -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let stopDic: [AnyHashable: Any] = [
            "instanceBlock": userPageSwitch,
            "infoLabel": roomCount,
            "touchView": castArray,
            "tableBar": collectionDictionary,
        ]
        videoParameters(stopDic, success: { _ in
            if let successBlock = successBlock {
                successBlock()
            }
        }, error: errorBlock)
    }

    class func request(
        sectionBindTotal: Int,
        capableName: String,
        onSuccess successBlock: ((_ model: SectionNetModel?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var stopDic: [AnyHashable: Any] = [:]
        stopDic["labelTable"] = sectionBindTotal
        stopDic["numberShow"] = capableName
        videoParameters(stopDic, success: { dic in
            if let successBlock = successBlock {
                let model = SectionNetModel()
                model.code = 200
                model.message = dic?["message"] as? String
                model.data = dic?["data"] as? [AnyHashable: Any]
                model.arrayLineName = dic?["arrayLineName"] as? String
                model.imageDictionary = dic?["imageDictionary"] as? [AnyHashable: Any]
                model.downDictionary = dic?["imageDictionary"] as? [AnyHashable: Any]
                successBlock(model)
            }
        }, error: errorBlock)
    }

    class func videoParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/gesture/image"
        CircleEmptyNetTool.url(
            urlString,
            method: backgroundMethod(),
            parameters: parameters,
            success: successBlock,
            failure: { _ in
                if let errorBlock = errorBlock {
                    let errorMessage = "\(urlString): \("shared")"
                    errorBlock(579, errorMessage)
                }
            }
        )
    }

    class func backgroundMethod() -> NetNameMethed {
        return .post
    }

    class func standingSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/type/row"
        CircleEmptyNetTool.post(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("reply")"
                errorBlock(378, errorMessage)
            }
        })
    }
}