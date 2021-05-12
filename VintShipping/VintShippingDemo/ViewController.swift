import UIKit
import VintShipping

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction
    func openShippingScene() {
        self.navigationController?.pushViewController(ShippingViewController(), animated: true)
    }
}
