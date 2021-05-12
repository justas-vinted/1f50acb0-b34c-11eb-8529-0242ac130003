import UIKit

public protocol ParcelTrackingProviding {
    
    func provideTrackingDetails(from controller: UIViewController, completion: @escaping () -> ())
}
