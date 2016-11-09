import XCTest
@testable import CircularTests
@testable import CircularToolTests

XCTMain([
     testCase(CircularTests.allTests),
     testCase(CircularToolTests.allTests)
])
