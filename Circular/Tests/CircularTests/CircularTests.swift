import XCTest
@testable import Circular

class CircularTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Circular().text, "Hello, World!")
    }


    static var allTests : [(String, (CircularTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
