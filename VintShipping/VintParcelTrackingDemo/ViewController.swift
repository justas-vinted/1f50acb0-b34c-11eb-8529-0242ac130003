import UIKit
import VintParcelTracking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction
    func openParcelTrackingScreen() {
        navigationController?.pushViewController(ParcelTrackingViewController(), animated: true)
    }
}

