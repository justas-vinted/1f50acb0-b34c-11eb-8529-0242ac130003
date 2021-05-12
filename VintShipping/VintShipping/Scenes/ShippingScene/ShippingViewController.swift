import UIKit

public final class ShippingViewController: UIViewController {
    private let context: VintShippingContext
    private let trackingDetailsProvider: ParcelTrackingProviding
    
    @IBOutlet
    private var countryLabel: UILabel!
    @IBOutlet
    private var debugRunLabel: UILabel!

    public init(context: VintShippingContext = VintShippingModule.context,
                trackingDetailsProvider: ParcelTrackingProviding = VintShippingModule.trackingDetailsProvider) {
        self.context = context
        self.trackingDetailsProvider = trackingDetailsProvider
        super.init(nibName: "ShippingViewController", bundle: Bundle(for: Self.self))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Shipping"
        self.countryLabel.text = context.country
        self.debugRunLabel.text = context.isDebugEnv ? "true" : "false"
    }
    
    @IBAction
    private func openTrackingDetails() {
        trackingDetailsProvider.provideTrackingDetails(from: self) {}
    }
}
