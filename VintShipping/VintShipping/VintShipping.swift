import Foundation

public enum VintShippingModule {
    public static var context: VintShippingContext!
    public static var trackingDetailsProvider: ParcelTrackingProviding!
    public typealias Config = VintShippingContext & VintParcelTrackingContext & ParcelTrackingProviding

    public static func setup(config: Config) {
        self.context = config
        self.trackingDetailsProvider = config
        VintParcelTrackingModule.setup(config: config)
    }
}
