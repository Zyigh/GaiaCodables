import XCTest
@testable import GaiaCodables

final class GaiaCodablesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GaiaCodables().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
