import Foundation
enum FileUtil {
    static func createFolder_PRE_PLACEHOLD_name_(filePath: URL, createIntermediates: Bool = true, attributes: [FileAttributeKey: Any]? = nil) -> Bool {
        do {
            try FileManager.default.createDirectory(atPath: filePath.path, withIntermediateDirectories: createIntermediates, attributes: attributes)
            return true
        } catch {
            print(error)
            return false
        }
    }

    static func writeFile_PRE_PLACEHOLD_name_(content: Data, filePath: URL, options: Data.WritingOptions = []) -> Bool {
        do {
            try content.write(to: filePath, options: options)
            return true
        } catch {
            print(error)
            return false
        }
    }

    static func readFile(filePath: URL) -> Data? {
        let fileContents = FileManager.default.contents(atPath: filePath.path)
        if fileContents?.isEmpty == false {
            return fileContents
        } else {
            return nil
        }
    }

    static func deleteFile_PRE_PLACEHOLD_name_(filePath: URL) -> Bool {
        do {
            try FileManager.default.removeItem(at: filePath)
            return true
        } catch {
            print(error)
            return false
        }
    }
}

class CircleEmptyDataBase: NSObject {
    static let sharedInstance = CircleEmptyDataBase()
    private lazy var rootPath: URL = {
        let cachesDirectory = FileManager.default.urls(for: FileManager.SearchPathDirectory.cachesDirectory, in: .userDomainMask).first!
        let path = cachesDirectory.appendingPathComponent("/last.db")
        if FileUtil.createFolder_PRE_PLACEHOLD_name_(filePath: path) {
            return path
        }
        return cachesDirectory
    }()

    lazy var data: [String: [String: CircleEmptyDataModelBase]] = {
        let decoder = JSONDecoder()
        if let json = FileUtil.readFile(filePath: rootPath), let value = try? decoder.decode([String: [String: String]].self, from: json) {
            var result: [String: [String: CircleEmptyDataModelBase]] = [:]
            for (tableName, table) in value {
                result[tableName] = [:]
                for (primaryKey, model) in table {
                    if let cls = CircleEmptyTool.EndTapclass(from: primaryKey) as? CircleEmptyDataModelBase.Type,
                       let model = try? decoder.decode(cls, from: json)
                    {
                        result[tableName]?[primaryKey] = model
                    }
                }
            }
            return result
        }
        return [:]
    }()

    func save() -> Bool {
        let encoder = JSONEncoder()
        var result: [String: [String: String]] = [:]
        for (tableName, table) in data {
            result[tableName] = [:]
            for (primaryKey, model) in table {
                if let data = try? encoder.encode(model), let string = String(data: data, encoding: .utf8) {
                    result[tableName]?[primaryKey] = string
                }
            }
        }
        if let data = try? encoder.encode(result), FileUtil.writeFile_PRE_PLACEHOLD_name_(content: data, filePath: rootPath) {
            return true
        }
        print(result)
        return false
    }

    func clear() -> Bool {
        return FileUtil.deleteFile_PRE_PLACEHOLD_name_(filePath: rootPath)
    }
}

protocol CircleEmptyDataProtocol {
    static func tableName() -> String
    static func primaryKey() -> String
    static func ignoreNames() -> [String]?
    static func fieldMapping() -> [String: String]?
}

class CircleEmptyDataModelBase: Codable, CircleEmptyDataProtocol {
    class func tableName() -> String {
        return NSStringFromClass(self)
    }

    class func primaryKey() -> String {
        return "CircleEmpty"
    }

    class func ignoreNames() -> [String]? {
        return nil
    }

    class func fieldMapping() -> [String: String]? {
        return nil
    }
}
