import UIKit
import VintShipping

@main
class AppDelegate: UIResponder, UIApplicationDelegate, VintParcelTrackingContext, VintShippingContext, ParcelTrackingProviding {
    
    var isDebugEnv: Bool = true
    
    var country: String = "UK"
    
    var shippingContextAttribute1: String = "Demo"
    
    var parcelTrackingContexAttribute1: String = "Demo"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        VintShippingModule.setup(config: self)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func provideTrackingDetails(from controller: UIViewController, completion: @escaping () -> ()) {
        let alert = UIAlertController(title: "Details", message: "You will get your item soon. Be patient!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: .default, handler: { _ in
            completion()
        }))
        controller.present(alert, animated: true, completion: nil)
    }
}
