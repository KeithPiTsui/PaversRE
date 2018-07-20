import XCTest
@testable import PaversRE

final class PaversRETests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PaversRE().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
