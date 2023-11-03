import XCTest
@testable import OptionalKit

final class OptionalKitTests: XCTestCase {
    // MARK: - Test cases for isNil
    func testIsNil_whenNil() {
        let nilValue: Int? = nil
        XCTAssertTrue(nilValue.isNil)
    }
    
    func testIsNil_whenNotNil() {
        let nonNilValue: Int? = 941
        XCTAssertFalse(nonNilValue.isNil)
    }
    
    // MARK: - Test cases for isNotNil
    func testIsNotNil_whenNotNil() {
        let nonNilValue: Int? = 941
        XCTAssertTrue(nonNilValue.isNotNil)
    }
    
    func testIsNotNil_whenNil() {
        let nilValue: Int? = nil
        XCTAssertFalse(nilValue.isNotNil)
    }
    
    // MARK: - Test cases for ifNil
    func testIfNil_whenNil() {
        let nilValue: Int? = nil
        var ifNilCalled = false
        
        nilValue.ifNil {
            ifNilCalled = true
        }
        
        XCTAssertTrue(ifNilCalled)
    }
    
    func testIfNil_whenNotNil() {
        let nonNilValue: Int? = 941
        var ifNilCalled = false
        
        nonNilValue.ifNil {
            ifNilCalled = true
        }
        
        XCTAssertFalse(ifNilCalled)
    }
    
    // MARK: - Test cases for ifNotNil
    func testIfNotNil_whenNotNil() {
        let nonNilValue: Int? = 941
        var result: Int?
        
        nonNilValue.ifNotNil { value in
            result = value
        }
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result, 941)
    }
    
    func testIfNotNil_whenNil() {
        let nilValue: Int? = nil
        var ifNotNilCalled = false
        
        nilValue.ifNotNil { _ in
            ifNotNilCalled = true
        }
        
        XCTAssertFalse(ifNotNilCalled)
    }
}
