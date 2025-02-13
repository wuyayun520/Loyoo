//
//  STLicHelper.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/9.
//

import UIKit


public typealias Completionblock = (_ succeed: Bool) -> Void

@objcMembers public class STLicHelper: NSObject {

    static public let share = STLicHelper()
    private override init() {}
    
    // 校验license有效性 先本地->后网络
    public func checkLicense() -> Bool {
        if checkLicenseFromLocal() {
            return true
        }
        return checkDownloadedLicense()
    }
    
    // 校验ipa包里面的license【本地】
    func checkLicenseFromLocal() -> Bool {
        if let path = LimitPodspecBundle.bundle.path(forResource: "SENSEME", ofType: "lic") {
            let licenseData = NSData(contentsOfFile: path)
            if licenseData != nil {
                return checkActiveCodeWithData(dataLicense: licenseData!)
            }
        }

        return false
    }
    
    // 校验网络下载缓存的license【网络】
    func checkDownloadedLicense() -> Bool {
        let path = licDiskPath()
        if FileManager.default.fileExists(atPath: path as String) {
            var licData: NSData?
            do {
                licData = try NSData(contentsOfFile: path as String, options: .alwaysMapped)
            } catch _ {
                licData = nil
            }
            
            if licData != nil {
                return checkActiveCodeWithData(dataLicense: licData!)
            }
        }
        
        return false
    }
    
    // 商汤SDK，校验license文件
    func checkActiveCodeWithData(dataLicense: NSData) -> Bool {
        
        var iRet: st_result_t = ST_E_FAIL
        
        iRet = st_mobile_check_activecode_from_buffer(
                dataLicense.bytes,
                Int32(Int(dataLicense.length)),
                nil,
                0)
        
        if ST_OK == iRet {
            return true
        }
 
#if DEBUG
        // sdk版本号
        let toDb = st_mobile_get_version()!
        let version: NSString = NSString.init(utf8String: toDb)!
        print("senseTime version = %@", version)
        print("商汤SDK美颜license校验失败！！！错误码：%@", iRet)
#endif
    
        return false
    }
}

// MARK: - Request
extension STLicHelper {
    // 获取美颜license
    public func checkRemoteLicInfoWith(completion: @escaping Completionblock) {
        let reqModel = TitleTheoryThen.init()
        reqModel.requestPath = "mf/Index/senseTime"
        a_tabData.blackFor(model: reqModel) { succeed, result, errorModel in
            guard let dict = result as? Dictionary<String, Any> else {
                return
            }
            let json = JSON(dict)
            let licLink = json["url"].stringValue
            let md5 = json["md5"].stringValue
            if self.checkLicFileMd5With(md5: md5 as NSString) == false {
                if  licLink.count > 0 {
                    self.downloadLicsenWith(licUrl: licLink as NSString, completion: completion)
                    return
                }
            }
            
            completion(false)
        }
    }
    
    // md5校验
    func checkLicFileMd5With(md5: NSString) -> Bool {
        if md5.length <= 0 {
            return false
        }
        
        let filePath = licDiskPath()
        let fileMd5: NSString = LabelAnimatTool.shared.equalPath(filePath: filePath as String) as NSString
        
        return fileMd5 == md5
    }
    
    func licDiskPath() -> NSString {
        let stDirectory = licDiskDirectory()
        return stDirectory.appendingPathComponent("SENSEMELIC") as NSString
    }
    
    func licDiskDirectory() -> NSString {
        let docDirectory: NSString = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! as NSString
        let stDirectory = docDirectory.appendingPathComponent("App/ST/")
        let fm = FileManager.default
    
        if fm.fileExists(atPath: stDirectory) == false {
           
            try? fm.createDirectory(atPath: stDirectory, withIntermediateDirectories: true, attributes: nil)
            
        }
        return stDirectory as NSString
    }
    
    // 下载
    func downloadLicsenWith(licUrl: NSString, completion: @escaping Completionblock) {
        var urlOk = true
        var url = NSURL.init(string: "")
        
        if licUrl.length == 0 {
            urlOk = false
            
        } else {
            
            url = NSURL.init(string: licUrl as String)
            if url == nil {
                urlOk = false
            }
        }
        
        if urlOk == false {
            completion(false)
            return
        }
        let request = NSMutableURLRequest.init(url: NSURL.init(string: licUrl as String)! as URL)
        request.httpMethod      = "GET"
        request.timeoutInterval = 15.0
        
        URLSession.shared.dataTask(with: request as URLRequest) { [weak self] data, response, error in
            guard let self = self else {return}
            
            DispatchQueue.main.async {
                var licValid = false
                if data != nil {
                    self.saveLicenseData(licData: data! as NSData)
                    licValid = self.checkDownloadedLicense()
                }
                
                completion(licValid)
            }
        }.resume()
    }
    
    func saveLicenseData(licData: NSData) {
        let path = licDiskPath()
        let fm = FileManager.default
        
        if fm.fileExists(atPath: path as String) {
            try? fm.removeItem(atPath: path as String)
        }
        licData.write(toFile: path as String, atomically: true )
       
    }
}
