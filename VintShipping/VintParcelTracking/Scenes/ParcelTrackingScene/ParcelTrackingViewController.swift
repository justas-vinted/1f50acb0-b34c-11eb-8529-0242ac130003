import UIKit

public final class ParcelTrackingViewController: UIViewController {
    private let context: VintParcelTrackingContext

    public init(parcelTrackingContext: VintParcelTrackingContext = VintParcelTrackingModule.context) {
        self.context = parcelTrackingContext
        super.init(nibName: "ParcelTrackingViewController", bundle: Bundle(for: Self.self))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: View lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Parcel tracking"
        self.view.backgroundColor = .white
    }
}
