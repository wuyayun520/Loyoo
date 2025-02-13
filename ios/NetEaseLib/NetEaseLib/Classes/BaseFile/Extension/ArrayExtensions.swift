// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayExtensions.swift
//
//
//  Created by Hemming on 2023/7/19.
//

//: import Foundation
import Foundation

//: extension Array {
extension Array {
    /// 取下标,防止数组越界
    //: subscript(safe index: Index) -> Element? {
    subscript(safe index: Index) -> Element? {
        //: return indices.contains(index) ? self[index] : nil
        return indices.contains(index) ? self[index] : nil
    }
}


//: public class ThreadSafeArray<Element> {
public class SocialSafeArray<Element> {
    //: private(set) var array: [Element] = []
    private(set) var array: [Element] = []
    //: private var lock = pthread_rwlock_t()
    private var lock = pthread_rwlock_t()

    //: public init() {
    public init() {
        //: let status = pthread_rwlock_init(&lock, nil)
        let status = pthread_rwlock_init(&lock, nil)
        //: assert(status == 0)
        assert(status == 0)
    }

    //: public convenience init(array: [Element]) {
    public convenience init(array: [Element]) {
        //: self.init()
        self.init()
        //: self.array = array
        self.array = array
    }
    //: deinit {
    deinit {
        //: pthread_rwlock_destroy(&lock)
        pthread_rwlock_destroy(&lock)
    }
}

// MARK: - Properties

//: public extension ThreadSafeArray {
public extension SocialSafeArray {
    //: var first: Element? {
    var first: Element? {
        //: var result: Element?
        var result: Element?
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: result = array.first
        result = array.first
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: var last: Element? {
    var last: Element? {
        //: var result: Element?
        var result: Element?
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: result = array.last
        result = array.last
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: var count: Int {
    var count: Int {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let count = array.count
        let count = array.count
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return count
        return count
    }

    //: var isEmpty: Bool {
    var isEmpty: Bool {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = (array.count > 0)
        let result = (array.count > 0)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: var description: String {
    var description: String {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let str = array.description
        let str = array.description
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return str
        return str
    }
}

// MARK: - Immutable

//: public extension ThreadSafeArray {
public extension SocialSafeArray {
    //: func first(where predicate: (Element)->Bool)->Element? {
    func chemicalElement(where predicate: (Element)->Bool)->Element? {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.first(where: predicate)
        let result = array.first(where: predicate)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func last(where predicate: (Element)->Bool)->Element? {
    func mullion(where predicate: (Element)->Bool)->Element? {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.last(where: predicate)
        let result = array.last(where: predicate)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func filter(isIncluded: @escaping (Element)->Bool) ->ThreadSafeArray<Element> {
    func appIncluded(isIncluded: @escaping (Element)->Bool) ->SocialSafeArray<Element> {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.filter(isIncluded)
        let result = array.filter(isIncluded)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return ThreadSafeArray(array: result)
        return SocialSafeArray(array: result)
    }

    //: func index(where predicate: (Element)->Bool)-> Int? {
    func whereImage(where predicate: (Element)->Bool)-> Int? {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.firstIndex(where: predicate)
        let result = array.firstIndex(where: predicate)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func sorted(by areInIncreasingOrder: (Element, Element)->Bool)->ThreadSafeArray<Element> {
    func clickRecord(by areInIncreasingOrder: (Element, Element)->Bool)->SocialSafeArray<Element> {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.sorted(by: areInIncreasingOrder)
        let result = array.sorted(by: areInIncreasingOrder)
        //: let newArray = ThreadSafeArray<Element>(array: result)
        let newArray = SocialSafeArray<Element>(array: result)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return newArray
        return newArray
    }

    //: func map<T>(_ transform: @escaping (Element)->T) ->[T] {
    func frameMap<T>(_ transform: @escaping (Element)->T) ->[T] {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.map(transform)
        let result = array.map(transform)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func compactMap<T>(_ transform: (Element)->T)->[T] {
    func valueMake<T>(_ transform: (Element)->T)->[T] {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.compactMap(transform)
        let result = array.compactMap(transform)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func reduce<T>(initialResult: T, _ nexPartialResult: @escaping (T, Element)->T)->T {
    func analogDigitalConverterName<T>(initialResult: T, _ nexPartialResult: @escaping (T, Element)->T)->T {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.reduce(initialResult, nexPartialResult)
        let result = array.reduce(initialResult, nexPartialResult)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func forEach(_ body: (Element)->Void) {
    func timeOf(_ body: (Element)->Void) {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: array.forEach(body)
        array.forEach(body)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }

    //: func contains(where predicate: (Element)->Bool)->Bool {
    func generateWhere(where predicate: (Element)->Bool)->Bool {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.contains(where: predicate)
        let result = array.contains(where: predicate)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }

    //: func allSatisfy(_ predicate: (Element)->Bool)->Bool {
    func nameSatisfy(_ predicate: (Element)->Bool)->Bool {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = array.allSatisfy(predicate)
        let result = array.allSatisfy(predicate)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }
}

// MARK: - Mutable

//: public extension ThreadSafeArray {
public extension SocialSafeArray {
    //: func append(_ element: Element) {
    func cancelLoad(_ element: Element) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: array.append(element)
        array.append(element)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }

    //: func append(_ elements: [Element]) {
    func cancelLoad(_ elements: [Element]) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: array += elements
        array += elements
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }

    //: func insert(_ element: Element, at index: Int) {
    func futurism(_ element: Element, at index: Int) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: array.insert(element, at: index)
        array.insert(element, at: index)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }

    //: func remove(at index: Int, completion: ((Element)->Void)? = nil) {
    func someEqual(at index: Int, completion: ((Element)->Void)? = nil) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: if index > 0, index < count {
        if index > 0, index < count {
            //: let e = array.remove(at: index)
            let e = array.remove(at: index)
            //: completion?(e)
            completion?(e)
        }
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }

    //: func remove(where predicate: @escaping (Element)->Bool, completion: (([Element])->Void)? = nil) {
    func sizeDestroy(where predicate: @escaping (Element)->Bool, completion: (([Element])->Void)? = nil) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: var elements = [Element]()
        var elements = [Element]()
        //: while let index = array.firstIndex(where: predicate) {
        while let index = array.firstIndex(where: predicate) {
            //: elements.append(array.remove(at: index))
            elements.append(array.remove(at: index))
        }
        //: completion?(elements)
        completion?(elements)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }

    //: func removeAll(completion: (([Element])->Void)? = nil) {
    func viewBlock(completion: (([Element])->Void)? = nil) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: let elements = array
        let elements = array
        //: array.removeAll()
        array.removeAll()
        //: completion?(elements)
        completion?(elements)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }
    
    //: func removeSubrange(_ bounds: Range<Int>) {
    func succeedTo(_ bounds: Range<Int>) {
        //: pthread_rwlock_wrlock(&lock)
        pthread_rwlock_wrlock(&lock)
        //: let elements = array
        let elements = array
        //: array.removeSubrange(bounds)
        array.removeSubrange(bounds)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
    }
}

//: public extension ThreadSafeArray {
public extension SocialSafeArray {
    //: subscript(index: Int)->Element? {
    subscript(index: Int)->Element? {
        //: get {
        get {
            //: pthread_rwlock_rdlock(&lock)
            pthread_rwlock_rdlock(&lock)
            //: var result: Element?
            var result: Element?
            //: guard self.array.startIndex..<self.array.endIndex ~= index else {
            guard self.array.startIndex..<self.array.endIndex ~= index else {
                //: pthread_rwlock_unlock(&lock)
                pthread_rwlock_unlock(&lock)
                //: return nil
                return nil
            }
            
            //: result = self.array[index]
            result = self.array[index]
            //: pthread_rwlock_unlock(&lock)
            pthread_rwlock_unlock(&lock)
            //: return result
            return result
        }
        //: set {
        set {
            
            //: guard let newValue = newValue else {
            guard let newValue = newValue else {
                //: return
                return
            }
            //: if index < self.count {
            if index < self.count {
                //: pthread_rwlock_wrlock(&lock)
                pthread_rwlock_wrlock(&lock)
                //: self.array[index] = newValue
                self.array[index] = newValue
                //: pthread_rwlock_unlock(&lock)
                pthread_rwlock_unlock(&lock)
            }
            
        }
    }
}

// MARK: - Equatable

//: public extension ThreadSafeArray where Element: Equatable {
public extension SocialSafeArray where Element: Equatable {
    //: func contains(_ element: Element)->Bool {
    func snooker(_ element: Element)->Bool {
        //: pthread_rwlock_rdlock(&lock)
        pthread_rwlock_rdlock(&lock)
        //: let result = self.array.contains(element)
        let result = self.array.contains(element)
        //: pthread_rwlock_unlock(&lock)
        pthread_rwlock_unlock(&lock)
        //: return result
        return result
    }
}

// MARK: - Infix operators

//: public extension ThreadSafeArray {
public extension SocialSafeArray {
    /// Adds a new element at the end of the array.
    ///
    /// - Parameters:
    ///   - left: The collection to append to.
    ///   - right: The element to append to the array.
    //: static func +=(left: inout ThreadSafeArray, right: Element) {
    static func +=(left: inout SocialSafeArray, right: Element) {
        //: left.append(right)
        left.cancelLoad(right)
    }

    /// Adds new elements at the end of the array.
    ///
    /// - Parameters:
    ///   - left: The collection to append to.
    ///   - right: The elements to append to the array.
    //: static func +=(left: inout ThreadSafeArray, right: [Element]) {
    static func +=(left: inout SocialSafeArray, right: [Element]) {
        //: left.append(right)
        left.cancelLoad(right)
    }
}