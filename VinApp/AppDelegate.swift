import UIKit
import VintShipping

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        VintShippingModule.setup(config: ShippingModuleConfig.shared)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

private final class ShippingModuleConfig {
    static let shared = ShippingModuleConfig()
}

extension ShippingModuleConfig: VintShippingContext {
    var isDebugEnv: Bool {
        false
    }
    
    var country: String {
        "UK"
    }
    
    var shippingContextAttribute1: String {
        "Hello"
    }
}

extension ShippingModuleConfig: ParcelTrackingProviding {
    
    func provideTrackingDetails(from controller: UIViewController, completion: @escaping () -> ()) {
        controller.present(ParcelTrackingViewController(), animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                controller.presentedViewController?.dismiss(animated: true, completion: nil)
                completion()
            }
        }
    }
}

extension ShippingModuleConfig: VintParcelTrackingContext {
    
    var parcelTrackingContexAttribute1: String {
        ""
    }
}
