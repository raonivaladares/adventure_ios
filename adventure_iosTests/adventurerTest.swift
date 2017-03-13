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
    let adventurerSucess = Adventurer(name: "test_name")
    XCTAssertEqual(adventurerSucess?.name, "test_name")
    
    let adventurerFailEmpty = Adventurer(name: "")
    XCTAssertNil(adventurerFailEmpty)
  }
  
  func testSaveAndLoad() {
    let adventurer = Adventurer(name: "test_name")
    adventurer?.save()
    
    let current = Adventurer.getCurrent()
    XCTAssertEqual(current?.name, "test_name")
    
  }
  
}
