import XCTest
@testable import FusionStack

final class NovaFusionDBTests: XCTestCase {

    func testExample() throws {

        XCTAssertTrue(true)
    }

    func testUserModel() throws {

        let user = User(
            id: 1,
            username: "TestUser",
            email: "test@example.com"
        )

        XCTAssertEqual(user.username, "TestUser")
        XCTAssertEqual(user.email, "test@example.com")
    }

    func testAPIURL() throws {

        let url = URL(
            string: "http://127.0.0.1:8000/users"
        )

        XCTAssertNotNil(url)
    }
}
