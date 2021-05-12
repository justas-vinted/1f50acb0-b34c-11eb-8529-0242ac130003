import UIKit
import VintParcelTracking

@main
class AppDelegate: UIResponder, UIApplicationDelegate, VintParcelTrackingContext {
    var isDebugEnv: Bool = true
    
    var country: String = "NL"
    
    var parcelTrackingContexAttribute1: String { "Demo" }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        VintParcelTrackingModule.setup(config: self)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}
