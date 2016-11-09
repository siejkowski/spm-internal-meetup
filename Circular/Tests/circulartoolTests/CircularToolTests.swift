import XCTest
@testable import circulartool

final class CircularToolTests: XCTestCase {

    func testExample() {
        // This xis an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Something().something, "something")
    }


    static var allTests : [(String, (CircularToolTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
