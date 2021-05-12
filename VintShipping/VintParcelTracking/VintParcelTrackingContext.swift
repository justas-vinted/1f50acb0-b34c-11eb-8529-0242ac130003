import Foundation

public protocol VintParcelTrackingContext {
    var isDebugEnv: Bool { get }
    var country: String { get }
    var parcelTrackingContexAttribute1: String { get }
}
