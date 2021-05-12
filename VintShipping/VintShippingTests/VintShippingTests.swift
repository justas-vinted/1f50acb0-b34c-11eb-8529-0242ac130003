import XCTest
@testable import VintShipping

class VintShippingModuleTests: XCTestCase {

    func testSetup() throws {
        let context = Contex(
            isDebugEnv: true,
            country: "UK",
            parcelTrackingContexAttribute1: UUID().uuidString,
            shippingContextAttribute1: UUID().uuidString
        )
        VintShippingModule.setup(config: context)
        assert(VintShippingModule.context.shippingContextAttribute1 == context.shippingContextAttribute1)
    }
}

private struct Contex: VintShippingContext, VintParcelTrackingContext {
    var isDebugEnv: Bool
    
    var country: String
    
    var parcelTrackingContexAttribute1: String
    
    let shippingContextAttribute1: String
    
}


