import UIKit
import VintShipping

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction
    func openShipping() {
        navigationController?.pushViewController(ShippingViewController(), animated: true)
    }
}

