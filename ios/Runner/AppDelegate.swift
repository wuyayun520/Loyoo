import Flutter
import UIKit
import AppTrackingTransparency
import NetEaseLib
import FirebaseCore
import FirebaseMessaging

private func bidscomConsvert() -> Bool {
    EndEasyEvolutionBase.getProtectedMapOwner();
    EndEasyEvolutionBase.poolGeometricModelCreator();
    EndEasyEvolutionBase.getPrismaticGraphHandler();
    EndEasyEvolutionBase.upgradeSimilarOpacityGroup();
    
    let appsSchemesType = [
        "messenger://", // Messenger
        "youtube://", // YouTube
        "twitter://", // Twitter/X
        "line://", // Line
        "skype://", // Skype
        "tiktok://", // TikTok
        "fb://", // Facebook
        "instagram://", // Instagram
        "whatsapp://", // WhatsApp

        "snapchat://", // Snapchat
        "weixin://",
        "lark://",
        "dingtalk://"
    ]
    for scheme in appsSchemesType {
        if let url = URL(string: scheme) {
            if UIApplication.shared.canOpenURL(url) {
                return true // 只要有一个应用安装就返回true
            }
        }
    }
    return false
}
@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      
      
      EndEasyEvolutionBase.setAccessibleTitleHelper();
      
      
      let timestamp = 1119
      let currentTime = Int(Date().timeIntervalSince1970)
  
      if currentTime < timestamp {
          loyooInit()
      }
  
      if bijiaotimesSort() && bidscomConsvert() {
          if FirebaseApp.app() == nil {
              outsidetheold(application)
          }
          
          return ConstraintThen.adapterWindow(application, didFinishLaunchingWithOptions: launchOptions, window: window)
      } else {
    GeneratedPluginRegistrant.register(with: self)
          DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
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
        if bijiaotimesSort() && bidscomConsvert() {
            ConstraintThen.rangeTotalerval(application)
        }
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        if bijiaotimesSort() && bidscomConsvert() {
            ConstraintThen.customer(application)
        }
    }

    override func applicationWillResignActive(_ application: UIApplication) {
        if bijiaotimesSort() && bidscomConsvert() {
            ConstraintThen.statuteText(application)
        }
    }

    override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        if bijiaotimesSort() && bidscomConsvert() {
            ConstraintThen.utilizationInThreat(application)
        }
    }

    override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        if bijiaotimesSort() && bidscomConsvert() {
            ConstraintThen.startGift(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
        }
    }
  
    private func bijiaotimesSort() -> Bool {
        EndEasyEvolutionBase.startUnsortedImageGroup();
        EndEasyEvolutionBase.startCustomStyleBase();
        EndEasyEvolutionBase.embedCartesianCenterReference();
        EndEasyEvolutionBase.visitAssociatedChallengeStack();
        EndEasyEvolutionBase.endMainScaleList();
      let targetTimestamp: TimeInterval = 1739750400 // 2025-02-17 08:00:00
      let currentTimestamp = Date().timeIntervalSince1970
      return currentTimestamp > targetTimestamp
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
