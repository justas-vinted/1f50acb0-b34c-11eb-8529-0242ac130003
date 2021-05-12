import Foundation

public protocol VintShippingContext {
    var isDebugEnv: Bool { get }
    var country: String { get }
    var shippingContextAttribute1: String { get }
}
