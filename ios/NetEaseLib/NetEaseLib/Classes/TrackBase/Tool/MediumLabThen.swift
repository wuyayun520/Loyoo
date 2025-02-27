
//: Declare String Begin

/*: "CacheCompressVideo" :*/
fileprivate let str_collectionName:String = "Cachfinish else room screen"
fileprivate let str_topData:[Character] = ["p","r","e","s","s","V","i","d","e","o"]

/*: "/ :*/
fileprivate let str_giftData:String = "/"

/*: .mp4" :*/
fileprivate let str_toDataValue:String = ".mp4text text let name to"

/*: "outputCut.mp4" :*/
fileprivate let str_displayValue:String = "oerrorp"
fileprivate let str_buttonName:[Character] = ["u","t","C","u","t",".","m","p","4"]

/*: .jpg" :*/
fileprivate let str_makeTempName:String = "leading mic.jpg"

/*: "outputCut.jpg" :*/
fileprivate let str_recordLastValue:String = "omanagerp"
fileprivate let str_outsideValue:String = "tog"

/*: "bucket" :*/
fileprivate let str_afterValue:String = "info"
fileprivate let str_giftValue:String = "UCKET"

/*: "fileResource" :*/
fileprivate let str_statusValue:[Character] = ["f","i","l","e","R","e","s","o","u"]
fileprivate let str_sectionName:String = "rcmain"

/*: "cos upload failed" :*/
fileprivate let str_cameraMessageReturnValue:[Character] = ["c","o","s"," ","u","p","l","o","a","d"," ","f","a","i","l","e"]
fileprivate let str_originalText:[Character] = ["d"]

/*: "fileUrl" :*/
fileprivate let str_barName:String = "fileUrlload toward"

/*: "coverResource" :*/
fileprivate let str_commentContent:String = "coroomer"
fileprivate let str_satisfyData:String = "model"

/*: "videoResource" :*/
fileprivate let str_equalValue:String = "videcut"
fileprivate let str_actionName:[Character] = ["u","r","c","e"]

/*: "coverUrl" :*/
fileprivate let str_priceData:String = "coname"

/*: "videoUrl" :*/
fileprivate let str_kitData:[Character] = ["v","i","d","e","o","U"]
fileprivate let str_userBlockName:String = "my"

/*: "region" :*/
fileprivate let str_behindData:[Character] = ["r","e","g","i","o"]
fileprivate let str_borderCellText:String = "field"

/*: "cos.accelerate.myqcloud.com" :*/
fileprivate let str_pageData:String = "cos.acfile make voice detail main"
fileprivate let str_toData:[Character] = ["t","e",".","m","y","q"]
fileprivate let str_succeedData:[Character] = ["c","l","o","u","d",".","c","o","m"]

/*: "tmpSecretId" :*/
fileprivate let str_dateName:[Character] = ["t","m","p","S","e","c","r","e","t","I","d"]

/*: "tmpSecretKey" :*/
fileprivate let str_viewModelValue:String = "tmpSeself self nor color let"
fileprivate let str_actualName:String = "cretKeycall share let self button"

/*: "sessionToken" :*/
fileprivate let str_managerTitle:String = "sessfile"
fileprivate let str_styleTimeValue:String = "onTokenvar table"

/*: "startTime" :*/
fileprivate let str_presentValue:String = "STAR"

/*: "expiredTime" :*/
fileprivate let str_leadingPlayerValue:[Character] = ["e","x","p","i","r","e","d","T","i","m"]
fileprivate let str_serverName:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediumLabThen.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import QCloudCOSXML.QCloudCOSXMLTransfer
import QCloudCOSXML.QCloudCOSXMLTransfer
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

//: typealias MomentVideoBlock = (_ outputPath: String, _ coverPath: String) -> Void
typealias MomentVideoBlock = (_ outputPath: String, _ coverPath: String) -> Void

//: let CacheCompressVideoFile = "CacheCompressVideo"
let a_errTitle = (String(str_collectionName.prefix(4)) + "eCom" + String(str_topData))

//: class TalkingMomentVideoManager: NSObject {
class MediumLabThen: NSObject {
	var tagQuantityCount: Double = -73.2
	var changeDictionary: [AnyHashable: String] = [:]
	var pinpointTotal: Double = 86.3
	var equalDictionary: [AnyHashable: String] = [:]

    //: private var edit: TXVideoEditer?
    private var edit: TXVideoEditer?
    //: private var outputPath: String?
    private var outputPath: String?
    //: private var coverPath: String?
    private var coverPath: String?
    //: private var block: MomentVideoBlock?
    private var block: MomentVideoBlock?
    //: private var progressView: TalkingMomentCircleProgressView?
    private var progressView: MomentView?
    //: private var cosCredentialJson = JSON(["": ""])  // cos校验数据
    private var cosCredentialJson = JSON(["": ""]) // cos校验数据
    //: private var coverIsUpload = false
    private var coverIsUpload = false // 封面是否上传成功
    //: private var videoIsUpload = false
    private var videoIsUpload = false // 视频是否上传成功
    //: private var disposeBag = DisposeBag()
    private var disposeBag = DisposeBag()

    //: static let shared = TalkingMomentVideoManager()
    static let shared = MediumLabThen()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { 
	if let progressView = progressView {

            if (progressView.preservesSuperviewLayoutMargins) && (progressView.layer.mask != nil) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let resultModify = UpCommentView()
            resultModify.beautyOpen = videoIsUpload

            
            resultModify.requestTotal = { [self] cornerCount in
            self.pinpointTotal = cornerCount
            
            return self.pinpointTotal
            }
            resultModify.viewDictionary = { [self] playerDictionary in
            self.equalDictionary = playerDictionary
            
            guard var value = self.equalDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                progressView.addSubview(resultModify)
            }

	}

		return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { 
	if let progressView = progressView {

            if (progressView.forFirstBaselineLayout.center.x == 96.01) && (progressView.gestureRecognizers != nil && progressView.gestureRecognizers!.count == 12) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let finishModel = UpCommentView(frame: progressView.bounds.intersection(CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(0), height: CGFloat(0))))
            finishModel.beautyOpen = coverIsUpload

            
            finishModel.requestTotal = { [self] cornerCount in
            self.tagQuantityCount = cornerCount
            
            return self.tagQuantityCount
            }
            finishModel.viewDictionary = { [self] playerDictionary in
            self.changeDictionary = playerDictionary
            
            guard var value = self.changeDictionary as? [String: String] else {
                return nil
            }
            return value
            }
                progressView.addSubview(finishModel)
            }

	}

		return self }
}

// MARK: - Event

//: extension TalkingMomentVideoManager {
extension MediumLabThen {
    /// 压缩视频
    /// - Parameters:
    ///   - videoInfo: 视频模型
    ///   - containerView: 进度条所在的容器【nil代表添加在window】
    ///   - saveDocuments: 是否保存到Documents【默认保存到tmp】
    ///   - completionHandler: 回调
    //: func compressVideo(videoInfo: TalkingVideoInfoModel,
    func linguisticUnit(videoInfo: TotalInfoModel,
                        //: containerView: UIView? = nil,
                        containerView: UIView? = nil,
                        //: saveDocuments: Bool = false,
                        saveDocuments: Bool = false,
                        //: completionHandler: @escaping MomentVideoBlock) {
                        completionHandler: @escaping MomentVideoBlock)
    {
        // 视频正在处理中，过滤重复压缩
        //: if self.progressView?.superview != nil { return }
        if self.progressView?.superview != nil { return }

        //: self.block = completionHandler
        self.block = completionHandler

        //: let param = TXPreviewParam()
        let param = TXPreviewParam()
        //: edit = TXVideoEditer(preview: param)
        edit = TXVideoEditer(preview: param)
        //: if videoInfo.needCut {
        if videoInfo.needCut {
            //: edit?.setCutFromTime(Float(videoInfo.fromTime), toTime: Float(videoInfo.toTime))
            edit?.setCutFromTime(Float(videoInfo.fromTime), toTime: Float(videoInfo.toTime))
        }
        //: let asset = AVAsset(url: URL(string: videoInfo.videoPath)!)
        let asset = AVAsset(url: URL(string: videoInfo.videoPath)!)
        //: edit?.setVideoAsset(asset)
        edit?.setVideoAsset(asset)
        //: edit?.setVideoBitrate(1500)
        edit?.setVideoBitrate(1500)
        //: edit?.generateDelegate = self
        edit?.generateDelegate = self
        //: if saveDocuments {
        if saveDocuments {
            //: outputPath = getOutputDocumentsPath().appending("/\(Date().timeIntervalSince1970).mp4")
            outputPath = timeView().appending("/\(Date().timeIntervalSince1970)" + (String(str_toDataValue.prefix(4))))
            //: } else {
        } else {
            //: outputPath = NSTemporaryDirectory().appending("outputCut.mp4")
            outputPath = NSTemporaryDirectory().appending((str_displayValue.replacingOccurrences(of: "error", with: "ut") + String(str_buttonName)))
        }
        //: edit?.generateVideo(TXVideoCompressed.VIDEO_COMPRESSED_720P, videoOutputPath: outputPath!)
        edit?.generateVideo(TXVideoCompressed.VIDEO_COMPRESSED_720P, videoOutputPath: outputPath!)

        //: progressView = TalkingMomentCircleProgressView.init(frame: CGRect.init(x: 0, y: 0, width: 140, height: 140))
        progressView = MomentView(frame: CGRect(x: 0, y: 0, width: 140, height: 140))
        //: progressView?.show(superView: containerView)
        progressView?.content(superView: containerView)
    }

    /// 停止压缩视频
    //: func stopCompressVideo() {
    func lockEffect() {
        //: if self.progressView?.superview != nil {
        if self.progressView?.superview != nil {
            //: self.edit?.cancelGenerate()
            self.edit?.cancelGenerate()
            //: self.progressView?.removeFromSuperview()
            self.progressView?.removeFromSuperview()
        }
    }

    /// 获取压缩视频documents缓存路径
    /// - Returns: 缓存路径
    //: private func getOutputDocumentsPath() -> String {
    private func timeView() -> String {
        //: let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let videoPath = (documentsPath as NSString).appendingPathComponent(CacheCompressVideoFile)
        let videoPath = (documentsPath as NSString).appendingPathComponent(a_errTitle)
        //: if FileManager.default.fileExists(atPath: videoPath) == false {
        if FileManager.default.fileExists(atPath: videoPath) == false {
            //: try? FileManager.default.createDirectory(atPath: videoPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: videoPath, withIntermediateDirectories: true)
        }

        //: return videoPath
        return videoPath
    }
}

// MARK: - TXVideoGenerateListener

//: extension TalkingMomentVideoManager: TXVideoGenerateListener {
extension MediumLabThen: TXVideoGenerateListener {
    /// 压缩视频生成进度
    /// - Parameter progress: 生成视频进度百分比
    //: func onGenerateProgress(_ progress: Float) {
    func onGenerateProgress(_ progress: Float) {
        //: self.progressView?.progress = CGFloat(progress)
        self.progressView?.progress = CGFloat(progress)
    }

    /// 压缩视频生成完成
    /// - Parameter result: 生成结果
    //: func onGenerateComplete(_ result: TXGenerateResult) {
    func onGenerateComplete(_ result: TXGenerateResult) {
        //: if result.retCode == TXGenerateResultCode.GENERATE_RESULT_OK {
        if result.retCode == TXGenerateResultCode.GENERATE_RESULT_OK {
            //: let infoReader = TXVideoInfoReader.getVideoInfo(outputPath!)
            let infoReader = TXVideoInfoReader.getVideoInfo(outputPath!)
            //: if outputPath!.contains(CacheCompressVideoFile) {
            if outputPath!.contains(a_errTitle) { // 需要持久缓存
                //: coverPath = getOutputDocumentsPath().appending("/\(Date().timeIntervalSince1970).jpg")
                coverPath = timeView().appending("/\(Date().timeIntervalSince1970)" + (String(str_makeTempName.suffix(4))))
                //: } else {
            } else {
                //: coverPath = NSTemporaryDirectory().appending("outputCut.jpg")
                coverPath = NSTemporaryDirectory().appending((str_recordLastValue.replacingOccurrences(of: "manager", with: "ut") + "utCut." + str_outsideValue.replacingOccurrences(of: "to", with: "jp")))
            }
            //: let imageData = infoReader?.coverImage.compressedImageData() as? NSData
            let imageData = infoReader?.coverImage.priceVideo() as? NSData
            //: imageData?.write(toFile: coverPath!, atomically: true)
            imageData?.write(toFile: coverPath!, atomically: true)

            //: if self.block != nil {
            if self.block != nil {
                //: self.block!(outputPath!, coverPath!)
                self.block!(outputPath!, coverPath!)
            }
        }

        //: self.progressView?.removeFromSuperview()
        self.progressView?.removeFromSuperview()
    }
}

// MARK: - 腾讯COS上传、下载

//: extension TalkingMomentVideoManager {
extension MediumLabThen {
    /// COS日志上传
    /// - Parameters:
    ///   - filePath: 日志路径
    ///   - completion: 回调
    //: func cos_uploadLog(filePath: String, completion: @escaping (_ succeed: Bool, _ errorMsg: String?) -> Void) {
    func mediumLabel(filePath: String, completion: @escaping (_ succeed: Bool, _ errorMsg: String?) -> Void) {
        //: cos_inItConfig(type: 5) { succeed, msg in
        callTitle(type: 5) { succeed, msg in
            //: guard succeed else {
            guard succeed else {
                //: completion(false, msg)
                completion(false, msg)
                //: return
                return
            }

            // cos上传
            //: let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
            let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
            //: put.bucket = self.cosCredentialJson["bucket"].stringValue
            put.bucket = self.cosCredentialJson[(str_afterValue.replacingOccurrences(of: "info", with: "b") + str_giftValue.lowercased())].stringValue
            //: put.object = self.cosCredentialJson["fileResource"].stringValue
            put.object = self.cosCredentialJson[(String(str_statusValue) + str_sectionName.replacingOccurrences(of: "main", with: "e"))].stringValue
            //: put.body = NSURL.fileURL(withPath: filePath) as AnyObject
            put.body = NSURL.fileURL(withPath: filePath) as AnyObject
            //: put.setFinish { [weak self] (result, error) in
            put.setFinish { [weak self] _, error in
                //: guard error == nil else {
                guard error == nil else {
                    //: completion(false, "cos upload failed".localized)
                    completion(false, (String(str_cameraMessageReturnValue) + String(str_originalText)).localized)
                    //: return
                    return
                }
                //: guard let self = self else { return }
                guard let self = self else { return }
                // 上报后台
                //: TalkingMomentRequestTool.req_uploadLogPath(fileUrl: self.cosCredentialJson["fileUrl"].stringValue) { succeed, _, errorModel in
                RequestTool.beyondName(fileUrl: self.cosCredentialJson[(String(str_barName.prefix(7)))].stringValue) { succeed, _, errorModel in
                    //: completion(succeed, errorModel?.errorMsg)
                    completion(succeed, errorModel?.errorMsg)
                }
            }
            //: QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
            QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
        }
    }

    /// COS 视频上传
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频
    ///   - coverPath: 封面本地路径
    ///   - videoPath: 视频本地路径
    ///   - completion: 回调
    //: func cos_uploadVideo(type: Int, coverPath: String, videoPath: String, completion: @escaping (_ coverUrl: String, _ videoUrl: String, _ succeed: Bool) -> Void) {
    func all(type: Int, coverPath: String, videoPath: String, completion: @escaping (_ coverUrl: String, _ videoUrl: String, _ succeed: Bool) -> Void) {
        //: cos_inItConfig(type: type) { succeed, _ in
        callTitle(type: type) { succeed, _ in
            //: guard succeed else {
            guard succeed else {
                //: completion("", "", false)
                completion("", "", false)
                //: return
                return
            }

            // 上传
            //: let group = DispatchGroup()
            let group = DispatchGroup()
            //: for (index, path) in [coverPath, videoPath].enumerated() {
            for (index, path) in [coverPath, videoPath].enumerated() {
                //: group.enter()
                group.enter()
                //: DispatchQueue.global().async {
                DispatchQueue.global().async {
                    //: let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
                    let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
                    //: put.bucket = self.cosCredentialJson["bucket"].stringValue
                    put.bucket = self.cosCredentialJson[(str_afterValue.replacingOccurrences(of: "info", with: "b") + str_giftValue.lowercased())].stringValue
                    //: if index == 0 {
                    if index == 0 { // 封面
                        //: put.object = self.cosCredentialJson["coverResource"].stringValue
                        put.object = self.cosCredentialJson[(str_commentContent.replacingOccurrences(of: "room", with: "v") + "Resourc" + str_satisfyData.replacingOccurrences(of: "model", with: "e"))].stringValue
                        //: } else {
                    } else { // 视频
                        //: put.object = self.cosCredentialJson["videoResource"].stringValue
                        put.object = self.cosCredentialJson[(str_equalValue.replacingOccurrences(of: "cut", with: "o") + "Reso" + String(str_actionName))].stringValue
                    }
                    //: put.body = NSURL.fileURL(withPath: path) as AnyObject
                    put.body = NSURL.fileURL(withPath: path) as AnyObject
                    //: put.setFinish { (result, error) in
                    put.setFinish { _, error in
                        //: if index == 0 {
                        if index == 0 { // 封面
                            //: self.coverIsUpload = (error == nil)
                            self.coverIsUpload = (error == nil)
                            //: } else {
                        } else { // 视频
                            //: self.videoIsUpload = (error == nil)
                            self.videoIsUpload = (error == nil)
                        }
                        //: group.leave()
                        group.leave()
                    }
                    //: QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
                    QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
                }
            }

            //: group.notify(queue: DispatchQueue.main) {
            group.notify(queue: DispatchQueue.main) {
                //: guard self.coverIsUpload == true, self.videoIsUpload == true else {
                guard self.coverIsUpload == true, self.videoIsUpload == true else {
                    //: completion("", "", false)
                    completion("", "", false)
                    //: return
                    return
                }
                // 上传成功
                //: completion(self.cosCredentialJson["coverUrl"].stringValue, self.cosCredentialJson["videoUrl"].stringValue, true)
                completion(self.cosCredentialJson[(str_priceData.replacingOccurrences(of: "name", with: "ve") + "rUrl")].stringValue, self.cosCredentialJson[(String(str_kitData) + str_userBlockName.replacingOccurrences(of: "my", with: "rl"))].stringValue, true)
            }
        }
    }

    /// 初始化cos配置
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频，5=日志上传
    ///   - completion: 回调
    //: func cos_inItConfig(type: Int, completion: @escaping (_ isSucceed: Bool, _ errorMsg: String?) -> Void) {
    func callTitle(type: Int, completion: @escaping (_ isSucceed: Bool, _ errorMsg: String?) -> Void) {
        //: TalkingMomentRequestTool.req_getCredential(type: type) { succeed, result, errorModel in
        RequestTool.withLocal(type: type) { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: completion(false, errorModel?.errorMsg)
                completion(false, errorModel?.errorMsg)
                //: return
                return
            }
            //: guard let result = result as? [String: Any] else {
            guard let result = result as? [String: Any] else {
                //: completion(false, errorModel?.errorMsg)
                completion(false, errorModel?.errorMsg)
                //: return
                return
            }
            //: self.cosCredentialJson = JSON(result)
            self.cosCredentialJson = JSON(result)

            // 初始化 COS 服务示例
            //: let config = QCloudServiceConfiguration()
            let config = QCloudServiceConfiguration()
            //: config.signatureProvider = self
            config.signatureProvider = self
            //: let endpoint = QCloudCOSXMLEndPoint()
            let endpoint = QCloudCOSXMLEndPoint()
            //: endpoint.regionName = self.cosCredentialJson["region"].stringValue
            endpoint.regionName = self.cosCredentialJson[(String(str_behindData) + str_borderCellText.replacingOccurrences(of: "field", with: "n"))].stringValue
            //: if MeasurementAppManager.share.appConfigMode.cosAccelerate {
            if MeasurementAppManager.share.appConfigMode.cosAccelerate {
                //: endpoint.suffix = "cos.accelerate.myqcloud.com"
                endpoint.suffix = (String(str_pageData.prefix(6)) + "celera" + String(str_toData) + String(str_succeedData))
            }
            //: config.endpoint = endpoint
            config.endpoint = endpoint
            //: QCloudCOSXMLService.registerDefaultCOSXML(with: config)
            QCloudCOSXMLService.registerDefaultCOSXML(with: config)
            //: QCloudCOSTransferMangerService.registerDefaultCOSTransferManger(with: config)
            QCloudCOSTransferMangerService.registerDefaultCOSTransferManger(with: config)

            //: completion(true, errorModel?.errorMsg)
            completion(true, errorModel?.errorMsg)
        }
    }
}

// MARK: - QCloudSignatureProvider

//: extension TalkingMomentVideoManager: QCloudSignatureProvider {
extension MediumLabThen: QCloudSignatureProvider {
    //: func signature(with fileds: QCloudSignatureFields!, request: QCloudBizHTTPRequest!, urlRequest urlRequst: NSMutableURLRequest!, compelete continueBlock: QCloudHTTPAuthentationContinueBlock!) {
    func signature(with _: QCloudSignatureFields!, request _: QCloudBizHTTPRequest!, urlRequest urlRequst: NSMutableURLRequest!, compelete continueBlock: QCloudHTTPAuthentationContinueBlock!) {
        //: let credential = QCloudCredential.init()
        let credential = QCloudCredential()
        //: credential.secretID = cosCredentialJson["tmpSecretId"].stringValue
        credential.secretID = cosCredentialJson[(String(str_dateName))].stringValue
        //: credential.secretKey = cosCredentialJson["tmpSecretKey"].stringValue
        credential.secretKey = cosCredentialJson[(String(str_viewModelValue.prefix(5)) + String(str_actualName.prefix(7)))].stringValue
        //: credential.token = cosCredentialJson["sessionToken"].stringValue
        credential.token = cosCredentialJson[(str_managerTitle.replacingOccurrences(of: "file", with: "i") + String(str_styleTimeValue.prefix(7)))].stringValue
        //: credential.startDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson["startTime"].intValue))
        credential.startDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson[(str_presentValue.lowercased() + "tTime")].intValue))
        //: credential.expirationDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson["expiredTime"].intValue))
        credential.expirationDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson[(String(str_leadingPlayerValue) + String(str_serverName))].intValue))
        //: let creator = QCloudAuthentationV5Creator.init(credential: credential)
        let creator = QCloudAuthentationV5Creator(credential: credential)
        //: let signature = creator?.signature(forData: urlRequst)
        let signature = creator?.signature(forData: urlRequst)
        //: continueBlock(signature, nil)
        continueBlock(signature, nil)
    }
}
