
class CircleEmptyNetBase {
    var rootUrl = "info.more"
    var token = ""
    static let shareInstance = CircleEmptyNetBase()
    func headAppend(url: String) -> String {
        rootUrl + url
    }

    var reachability: ReachabilityCellTool?
    let hostNames = [nil, "image.com", "invalidhost"]
    var hostIndex = 0
    init() {
        startHost(at: 0)
    }

    func startHost(at index: Int) {
        stopNotifier()
        setupReachability(hostNames[index], useClosures: false)
        startNotifier_PRE_PLACEHOLD_name_()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.startHost(at: (index + 1) % 3)
        }
    }

    func setupReachability(_ hostName: String?, useClosures: Bool) {
        let reachability: ReachabilityCellTool?
        if let hostName = hostName {
            reachability = try? ReachabilityCellTool(hostname: hostName)
        } else {
            reachability = try? ReachabilityCellTool()
        }
        self.reachability = reachability
        if useClosures {
            reachability?.whenReachable = { reachability in
                self.updateLabelColourWhenReachable(reachability)
            }
            reachability?.whenUnreachable = { reachability in
                self.updateLabelColourWhenNotReachable(reachability)
            }
        } else {
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(reachabilityCrossheadChanged(_:)),
                name: .reachabilityCrossheadChanged,
                object: reachability
            )
        }
    }

    func startNotifier_PRE_PLACEHOLD_name_() {
        print("--- start notifier")
        do {
            try reachability?.startNotifier()
        } catch {
            return
        }
    }

    func stopNotifier() {
        print("--- stop notifier")
        reachability?.stopNotifier()
        NotificationCenter.default.removeObserver(self, name: .reachabilityCrossheadChanged, object: nil)
        reachability = nil
    }

    func updateLabelColourWhenReachable(_ reachability: ReachabilityCellTool) {
        print("\(reachability.description) - \(reachability.connection)")
    }

    func updateLabelColourWhenNotReachable(_ reachability: ReachabilityCellTool) {
        print("\(reachability.description) - \(reachability.connection)")
    }

    @objc func reachabilityCrossheadChanged(_ note: Notification) {
        let reachability = note.object as! ReachabilityCellTool
        if reachability.connection != .unavailable {
            updateLabelColourWhenReachable(reachability)
        } else {
            updateLabelColourWhenNotReachable(reachability)
        }
    }

    deinit {
        stopNotifier()
    }
}

import Foundation
import SystemConfiguration
public enum ReachabilityGlowError: Error {
    case failedToCreateWithAddress(sockaddr, Int32)
    case failedToCreateWithHostname(String, Int32)
    case unableToSetCallback(Int32)
    case unableToSetDispatchQueue(Int32)
    case unableToGetFlags(Int32)
}

public extension Notification.Name {
    static let reachabilityCrossheadChanged = Notification.Name("reachabilityCrossheadChanged")
}

public class ReachabilityCellTool {
    public typealias NetworkReachable = (ReachabilityCellTool) -> Void
    public typealias NetworkUnreachable = (ReachabilityCellTool) -> Void
    @available(*, unavailable, renamed: "Connection")
    public enum NetworkStatus: CustomStringConvertible {
        case notReachable, reachableViaWiFi, reachableViaWWAN
        public var description: String {
            switch self {
            case .reachableViaWWAN: return "Cellular"
            case .reachableViaWiFi: return "WiFi"
            case .notReachable: return "No SCNetworkLightConnection"
            }
        }
    }

    public enum Connection: CustomStringConvertible {
        case unavailable, wifi, cellular
        public var description: String {
            switch self {
            case .cellular: return "Cellular"
            case .wifi: return "WiFi"
            case .unavailable: return "No SCNetworkLightConnection"
            }
        }

        @available(*, deprecated, renamed: "unavailable")
        public static let none: Connection = .unavailable
    }

    public var whenReachable: NetworkReachable?
    public var whenUnreachable: NetworkUnreachable?
    @available(*, deprecated, renamed: "allowsCellularConnection")
    public let reachableOnWWAN: Bool = true
    /// Set to `false` to force Reachability.connection to .none when on cellular connection (default value `true`)
    public var allowsCellularConnection: Bool
    // The notification center on which "reachability changed" events are being posted
    public var notificationCenter: NotificationCenter = .default
    @available(*, deprecated, renamed: "connection.description")
    public var currentReachabilityString: String {
        return "\(connection)"
    }

    @available(*, unavailable, renamed: "connection")
    public var currentReachabilityStatus: Connection {
        return connection
    }

    public var connection: Connection {
        if flags == nil {
            try? setReachabilityFlags()
        }
        switch flags?.connectionNameAction {
        case .unavailable?, nil: return .unavailable
        case .cellular?: return allowsCellularConnection ? .cellular : .unavailable
        case .wifi?: return .wifi
        }
    }

    fileprivate var isRunningOnDevice: Bool = {
        #if targetEnvironment(simulator)
            return false
        #else
            return true
        #endif
    }()

    fileprivate(set) var notifierRunning = false
    fileprivate let reachabilityRef: SCNetworkReachability
    fileprivate let reachabilitySerialQueue: DispatchQueue
    fileprivate let notificationQueue: DispatchQueue?
    fileprivate(set) var flags: SCNetworkReachabilityFlags? {
        didSet {
            guard flags != oldValue else { return }
            notifyReachabilityChanged()
        }
    }

    public required init(reachabilityRef: SCNetworkReachability,
                         queueQoS: DispatchQoS = .default,
                         targetQueue: DispatchQueue? = nil,
                         notificationQueue: DispatchQueue? = .main)
    {
        allowsCellularConnection = true
        self.reachabilityRef = reachabilityRef
        reachabilitySerialQueue = DispatchQueue(label: "uk.co.ashleymills.reachability", qos: queueQoS, target: targetQueue)
        self.notificationQueue = notificationQueue
    }

    public convenience init(hostname: String,
                            queueQoS: DispatchQoS = .default,
                            targetQueue: DispatchQueue? = nil,
                            notificationQueue: DispatchQueue? = .main) throws
    {
        guard let ref = SCNetworkReachabilityCreateWithName(nil, hostname) else {
            throw ReachabilityGlowError.failedToCreateWithHostname(hostname, SCError())
        }
        self.init(reachabilityRef: ref, queueQoS: queueQoS, targetQueue: targetQueue, notificationQueue: notificationQueue)
    }

    public convenience init(queueQoS: DispatchQoS = .default,
                            targetQueue: DispatchQueue? = nil,
                            notificationQueue: DispatchQueue? = .main) throws
    {
        var zeroAddress = sockaddr()
        zeroAddress.sa_len = UInt8(MemoryLayout<sockaddr>.size)
        zeroAddress.sa_family = sa_family_t(AF_INET)
        guard let ref = SCNetworkReachabilityCreateWithAddress(nil, &zeroAddress) else {
            throw ReachabilityGlowError.failedToCreateWithAddress(zeroAddress, SCError())
        }
        self.init(reachabilityRef: ref, queueQoS: queueQoS, targetQueue: targetQueue, notificationQueue: notificationQueue)
    }

    deinit {
        stopNotifier()
    }
}

public extension ReachabilityCellTool {
    // MARK: - *** Notifier methods ***

    func startNotifier() throws {
        guard !notifierRunning else { return }
        let callback: SCNetworkReachabilityCallBack = { _, flags, info in
            guard let info = info else { return }
            // `weakifiedReachability` is guaranteed to exist by virtue of our
            // retain/release callbacks which we provided to the `SCNetworkReachabilityContext`.
            let weakifiedReachability = Unmanaged<ReachabilityPersonWeakifier>.fromOpaque(info).takeUnretainedValue()
            // The weak `reachability` _may_ no longer exist if the `Reachability`
            // object has since been deallocated but a callback was already in flight.
            weakifiedReachability.reachability?.flags = flags
        }
        let weakifiedReachability = ReachabilityPersonWeakifier(reachability: self)
        let opaqueWeakifiedReachability = Unmanaged<ReachabilityPersonWeakifier>.passUnretained(weakifiedReachability).toOpaque()
        var context = SCNetworkReachabilityContext(
            version: 0,
            info: UnsafeMutableRawPointer(opaqueWeakifiedReachability),
            retain: { (info: UnsafeRawPointer) -> UnsafeRawPointer in
                let unmanagedWeakifiedReachability = Unmanaged<ReachabilityPersonWeakifier>.fromOpaque(info)
                _ = unmanagedWeakifiedReachability.retain()
                return UnsafeRawPointer(unmanagedWeakifiedReachability.toOpaque())
            },
            release: { (info: UnsafeRawPointer) in
                let unmanagedWeakifiedReachability = Unmanaged<ReachabilityPersonWeakifier>.fromOpaque(info)
                unmanagedWeakifiedReachability.release()
            },
            copyDescription: { (info: UnsafeRawPointer) -> Unmanaged<CFString> in
                let unmanagedWeakifiedReachability = Unmanaged<ReachabilityPersonWeakifier>.fromOpaque(info)
                let weakifiedReachability = unmanagedWeakifiedReachability.takeUnretainedValue()
                let description = weakifiedReachability.reachability?.description ?? "nil"
                return Unmanaged.passRetained(description as CFString)
            }
        )
        if !SCNetworkReachabilitySetCallback(reachabilityRef, callback, &context) {
            stopNotifier()
            throw ReachabilityGlowError.unableToSetCallback(SCError())
        }
        if !SCNetworkReachabilitySetDispatchQueue(reachabilityRef, reachabilitySerialQueue) {
            stopNotifier()
            throw ReachabilityGlowError.unableToSetDispatchQueue(SCError())
        }
        // Perform an initial check
        try setReachabilityFlags()
        notifierRunning = true
    }

    func stopNotifier() {
        defer { notifierRunning = false }
        SCNetworkReachabilitySetCallback(reachabilityRef, nil, nil)
        SCNetworkReachabilitySetDispatchQueue(reachabilityRef, nil)
    }

    // MARK: - *** SCNetworkLightConnection test methods ***

    @available(*, deprecated, message: "Please use `connection != .none`")
    var isReachable: Bool {
        return connection != .unavailable
    }

    @available(*, deprecated, message: "Please use `connection == .cellular`")
    var isReachableViaWWAN: Bool {
        // Check we're not on the simulator, we're REACHABLE and check we're on WWAN
        return connection == .cellular
    }

    @available(*, deprecated, message: "Please use `connection == .wifi`")
    var isReachableViaWiFi: Bool {
        return connection == .wifi
    }

    var description: String {
        return flags?.detailLog ?? "unavailable flags"
    }
}

private extension ReachabilityCellTool {
    func setReachabilityFlags() throws {
        try reachabilitySerialQueue.sync { [unowned self] in
            var flags = SCNetworkReachabilityFlags()
            if !SCNetworkReachabilityGetFlags(self.reachabilityRef, &flags) {
                self.stopNotifier()
                throw ReachabilityGlowError.unableToGetFlags(SCError())
            }
            self.flags = flags
        }
    }

    func notifyReachabilityChanged() {
        let notify = { [weak self] in
            guard let self = self else { return }
            self.connection != .unavailable ? self.whenReachable?(self) : self.whenUnreachable?(self)
            self.notificationCenter.post(name: .reachabilityCrossheadChanged, object: self)
        }
        // notify on the configured `notificationQueue`, or the caller's (i.e. `reachabilitySerialQueue`)
        notificationQueue?.async(execute: notify) ?? notify()
    }
}

extension SCNetworkReachabilityFlags {
    typealias SCNetworkLightConnection = ReachabilityCellTool.Connection
    var connectionNameAction: SCNetworkLightConnection {
        guard isReachableAlbumClickFlagSet else { return .unavailable }
        // If we're reachable, but not on an iOS device (i.e. simulator), we must be on WiFi
        #if targetEnvironment(simulator)
            return .wifi
        #else
            var connectionNameAction = SCNetworkLightConnection.unavailable
            if !isConnectionRequiredDownFlagSet {
                connectionNameAction = .wifi
            }
            if isConnectionDoingTrafficOrDemandHeatherMixtureFlagSet {
                if !isSumerventionRequiredCornerFlagSet {
                    connectionNameAction = .wifi
                }
            }
            if isOffWWANErrorFrameFlagSet {
                connectionNameAction = .cellular
            }
            return connectionNameAction
        #endif
    }

    var isOffWWANErrorFrameFlagSet: Bool {
        #if os(iOS)
            return contains(.isWWAN)
        #else
            return false
        #endif
    }

    var isReachableAlbumClickFlagSet: Bool {
        return contains(.reachable)
    }

    var isConnectionRequiredDownFlagSet: Bool {
        return contains(.connectionRequired)
    }

    var isSumerventionRequiredCornerFlagSet: Bool {
        return contains(.interventionRequired)
    }

    var isConnectionDoingTrafficLoadFlagSet: Bool {
        return contains(.connectionOnTraffic)
    }

    var isConnectionEnableDemandAppearFlagSet: Bool {
        return contains(.connectionOnDemand)
    }

    var isConnectionDoingTrafficOrDemandHeatherMixtureFlagSet: Bool {
        return !intersection([.connectionOnTraffic, .connectionOnDemand]).isEmpty
    }

    var isTransientConnectionTinctureSnapFlagSet: Bool {
        return contains(.transientConnection)
    }

    var isLocalAddressWordsFlagSet: Bool {
        return contains(.isLocalAddress)
    }

    var isDirectEventFlagSet: Bool {
        return contains(.isDirect)
    }

    var isConnectionRequiredAndTransientLoadPhotoFlagSet: Bool {
        return intersection([.connectionRequired, .transientConnection]) == [.connectionRequired, .transientConnection]
    }

    var detailLog: String {
        let W = isOffWWANErrorFrameFlagSet ? "W" : "-"
        let R = isReachableAlbumClickFlagSet ? "R" : "-"
        let c = isConnectionRequiredDownFlagSet ? "c" : "-"
        let t = isTransientConnectionTinctureSnapFlagSet ? "t" : "-"
        let i = isSumerventionRequiredCornerFlagSet ? "i" : "-"
        let C = isConnectionDoingTrafficLoadFlagSet ? "C" : "-"
        let D = isConnectionEnableDemandAppearFlagSet ? "D" : "-"
        let l = isLocalAddressWordsFlagSet ? "l" : "-"
        let d = isDirectEventFlagSet ? "d" : "-"
        return "\(W)\(R) \(c)\(t)\(i)\(C)\(D)\(l)\(d)"
    }
}

/**
 `ReachabilityPersonWeakifier` weakly wraps the `ReachabilityCellTool` class
 in order to break retain cycles when interacting with CoreFoundation.
 CoreFoundation callbacks expect a pair of retain/release whenever an
 opaque `info` parameter is provided. These callbacks exist to guard
 against memory management race conditions when invoking the callbacks.
 #### Race Condition
 If we passed `SCNetworkReachabilitySetCallback` a direct reference to our
 `ReachabilityCellTool` class without also providing corresponding retain/release
 callbacks, then a race condition can lead to crashes when:
 - `ReachabilityCellTool` is deallocated on thread X
 - A `SCNetworkReachability` callback(s) is already in flight on thread Y
 #### Retain Cycle
 If we pass `ReachabilityCellTool` to CoreFoundtion while also providing retain/
 release callbacks, we would create a retain cycle once CoreFoundation
 retains our `ReachabilityCellTool` class. This fixes the crashes and his how
 CoreFoundation expects the API to be used, but doesn't play nicely with
 Swift/ARC. This cycle would only be broken after manually calling
 `stopNotifier()` — `deinit` would never be called.
 #### ReachabilityPersonWeakifier
 By providing both retain/release callbacks and wrapping `ReachabilityCellTool` in
 a weak wrapper, we:
 - interact correctly with CoreFoundation, thereby avoiding a crash.
 See "Memory Management Programming Guide for Core Foundation".
 - don't alter the public API of `ReachabilityCellTool.swift` in any way
 - still allow for automatic stopping of the notifier on `deinit`.
 */
private class ReachabilityPersonWeakifier {
    weak var reachability: ReachabilityCellTool?
    init(reachability: ReachabilityCellTool) {
        self.reachability = reachability
    }
}
