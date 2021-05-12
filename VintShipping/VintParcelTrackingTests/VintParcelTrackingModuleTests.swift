import XCTest
@testable import VintParcelTracking

class VintParcelTrackingModuleTests: XCTestCase {

    func testSetup() throws {
        let context = ParcelTrackingContex(
            isDebugEnv: true,
            country: "KZ",
            parcelTrackingContexAttribute1: UUID().uuidString
        )
        VintParcelTrackingModule.setup(config: context)
        assert(VintParcelTrackingModule.context.parcelTrackingContexAttribute1 == context.parcelTrackingContexAttribute1)
    }
}

private struct ParcelTrackingContex: VintParcelTrackingContext {
    var isDebugEnv: Bool
    
    var country: String
    
    var parcelTrackingContexAttribute1: String
}
