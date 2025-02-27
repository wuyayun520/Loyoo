import Foundation
class BeyondPointHeightNetManager: CircleEmptyNetBase {
    class func requestPlayerPaperSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        startSuccess({ dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func request(
        physicsLaboratoryInterval: Int,
        televisionDictionary: [AnyHashable: Any],
        tabRankSuccess successBlock: ((_ message: String?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        let ballupDic: [AnyHashable: Any] = [
            "narrowCollection": physicsLaboratoryInterval,
            "lastLoad": televisionDictionary,
        ]
        bitValueTitleParameters(ballupDic, success: { dic in
            if let successBlock = successBlock, let value = dic?["to"] as? String {
                successBlock(value)
            }
        }, error: errorBlock)
    }

    class func request(
        recordTotal: Int,
        shouldSuccess successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?,
        error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?
    ) {
        var ballupDic: [AnyHashable: Any] = [:]
        ballupDic["viewPlace"] = recordTotal
        bitValueTitleParameters(ballupDic, success: { dic in
            if let successBlock = successBlock {
                successBlock(dic)
            }
        }, error: errorBlock)
    }

    class func bitValueTitleParameters(_ parameters: [AnyHashable: Any]?, success successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String?) -> Void)?) {
        let urlString = "/area/render"
        CircleEmptyNetTool.put(urlString, parameters: parameters, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("image")"
                errorBlock(397, errorMessage)
            }
        })
    }

    class func offMethod() -> NetNameMethed {
        return .delete
    }

    class func startSuccess(_ successBlock: ((_ dic: [AnyHashable: Any]?) -> Void)?, error errorBlock: ((_ errcode: Int, _ errorMessage: String) -> Void)?) {
        let urlString = "/play/count"
        CircleEmptyNetTool.put(urlString, success: successBlock, failure: { _ in
            if let errorBlock = errorBlock {
                let errorMessage = "\(urlString): \("accept")"
                errorBlock(540, errorMessage)
            }
        })
    }
}