import Flutter
import UIKit
import AppTrackingTransparency

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    // Request tracking authorization after a delay to ensure the app is fully launched
    if #available(iOS 14, *) {
      DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
        self.requestTrackingAuthorization()
      }
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  @available(iOS 14, *)
  private func requestTrackingAuthorization() {
    ATTrackingManager.requestTrackingAuthorization { status in
      var statusStr = ""
      switch status {
      case .authorized:
        statusStr = "Authorized"
      case .denied:
        statusStr = "Denied"
      case .notDetermined:
        statusStr = "Not Determined"
      case .restricted:
        statusStr = "Restricted"
      @unknown default:
        statusStr = "Unknown"
      }
      print("Tracking authorization status: \(statusStr)")
    }
  }
}
