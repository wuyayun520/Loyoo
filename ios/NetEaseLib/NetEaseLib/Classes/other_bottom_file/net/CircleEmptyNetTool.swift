import Foundation
enum NetNameMethed: Int {
    case post
    case delete
    case put
    case get
}

typealias NetColorSucceed = ([AnyHashable: Any]) -> Void
typealias NetDataConverterFailed = (Error) -> Void
class CircleEmptyNetTool: NSObject {
    class func url(_ url: String, method: NetNameMethed, parameters: [AnyHashable: Any]?, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        let fullUrl = CircleEmptyNetBase.shareInstance.headAppend(url: url)
        let token = CircleEmptyNetBase.shareInstance.token
        let head = [
            "live": token,
        ]
        CircleEmptyNetTool.url(fullUrl, method: method, header: head, parameters: parameters, success: success, failure: failure)
    }

    class func post(_ url: String, parameters: [AnyHashable: Any]?, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        self.url(url, method: .post, parameters: parameters, success: success, failure: failure)
    }

    class func delete(_ url: String, parameters: [AnyHashable: Any]?, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        self.url(url, method: .delete, parameters: parameters, success: success, failure: failure)
    }

    class func put(_ url: String, parameters: [AnyHashable: Any]?, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        self.url(url, method: .put, parameters: parameters, success: success, failure: failure)
    }

    class func get(_ url: String, parameters: [AnyHashable: Any]?, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        self.url(url, method: .get, parameters: parameters, success: success, failure: failure)
    }

    class func post(_ url: String, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        post(url, parameters: nil, success: success, failure: failure)
    }

    class func delete(_ url: String, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        delete(url, parameters: nil, success: success, failure: failure)
    }

    class func put(_ url: String, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        put(url, parameters: nil, success: success, failure: failure)
    }

    class func get(_ url: String, success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        get(url, parameters: nil, success: success, failure: failure)
    }

    class func url(_ url: String, method: NetNameMethed, header: [String: String]?, parameters: [AnyHashable: Any]? = [:], success: NetColorSucceed?, failure: NetDataConverterFailed?) {
        var url = url
        if method == .get, let parameters = parameters, parameters.isEmpty {
            url = parameters.reduce("\(url)?") { "\($0)&\($1)" }
        }
        let request = NSMutableURLRequest(url: URL(string: url)!)
        request.httpMethod = networkMethod(method)
        switch method {
        case .post, .put:
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        case .delete, .get:
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        }
        request.allHTTPHeaderFields = header
        if method != .get,
           let parameters = parameters,
           let data = try? JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted),
           let json = String(data: data, encoding: .utf8)
        {
            request.httpBody = json.data(using: .utf8)
        }
        URLSession.shared.dataTask(with: request as URLRequest) { data, _, error in
            DispatchQueue.main.async {
                if let error = error, let failure = failure {
                    failure(error)
                } else {
                    if let data = data,
                       let responseObject = try? JSONSerialization.jsonObject(with: data, options: []) as? [AnyHashable: Any],
                       let success = success
                    {
                        success(responseObject)
                    }
                }
            }
        }.resume()
    }

    class func networkMethod(_ method: NetNameMethed) -> String {
        var string = ""
        switch method {
        case .post:
            string = "POST"
        case .delete:
            string = "DELETE"
        case .put:
            string = "PUT"
        case .get:
            string = "GET"
        }
        return string
    }
}
