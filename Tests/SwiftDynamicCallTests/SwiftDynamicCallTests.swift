import XCTest
@testable import SwiftDynamicCall

final class SwiftDynamicCallTests: XCTestCase {
    func testStatic() {
        self.measure {
            Car().drive()
        }
    }

    func testDynamic() {
        self.measure {
            let vehicle: Vehicle = Car()
            vehicle.drive()
        }
    }
}
