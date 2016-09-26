import XCTest
@testable import adventure_ios

class adventurerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInit() {
        let adventurer = Adventurer(name: "test_name")
        XCTAssertEqual(adventurer.name, "test_name")
    }
}
