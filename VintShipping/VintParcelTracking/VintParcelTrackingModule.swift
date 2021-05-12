import Foundation

public enum VintParcelTrackingModule {
    public static var context: VintParcelTrackingContext!
    public typealias Config = VintParcelTrackingContext
    
    public static func setup(config: Config) {
        self.context = config
    }
}
