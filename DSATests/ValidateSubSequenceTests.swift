//
//  ValidateSubSequenceTests.swift
//  DSATests
//
//  Created by Sidharth J Dev on 16/08/23.
//

import XCTest
@testable import DSA
final class ValidateSubSequenceTests: XCTestCase {
    
    var subSequence: ValidateSubSequence!
    
    override func setUp() {
        super.setUp()
        subSequence = ValidateSubSequence()
    }
    
    override func tearDown() {
        subSequence = nil
        super.tearDown()
    }
    
    func testValidSubsequence() {
        XCTAssertTrue(subSequence.isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]))
        XCTAssertTrue(subSequence.isValidSubsequence([1, 2, 3, 4], [2, 4]))
        XCTAssertTrue(subSequence.isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [5, 1, 22, 25, 6, -1, 8, 10]))
    }
    
    func testInvalidSubsequence() {
        XCTAssertFalse(subSequence.isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [5, 1, 25, 22, 6, -1, 8, 10]))
        XCTAssertFalse(subSequence.isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [5, 1, 22, 25, 6, -1, 8, 10, 12]))
        XCTAssertFalse(subSequence.isValidSubsequence([1, 2, 3, 4], [1, 3, 4, 2]))
    }
    
    func testEdgeCases() {
        // Testing with empty subsequences
        XCTAssertTrue(subSequence.isValidSubsequence([1, 2, 3, 4], []))
        XCTAssertFalse(subSequence.isValidSubsequence([], [1]))
        
        // Testing with both empty
        XCTAssertTrue(subSequence.isValidSubsequence([], []))
        
        // Sequence is longer than the array
        XCTAssertFalse(subSequence.isValidSubsequence([1, 2, 3], [1, 2, 3, 4]))
    }
}
