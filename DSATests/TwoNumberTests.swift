//
//  TwoNumberTests.swift
//  DSATests
//
//  Created by Sidharth J Dev on 16/08/23.
//

import XCTest
@testable import DSA

final class TwoNumberTests: XCTestCase {

    var twoNumberSum: TwoNumberSum!
    
    override func setUp() {
        super.setUp()
        twoNumberSum = TwoNumberSum()
    }
    
    override func tearDown() {
        twoNumberSum = nil
        super.tearDown()
    }
    
    func testBasicFunctionality() {
        var array = [3, 5, -4, 8, 11, 1, -1, 6]
        let result = twoNumberSum.twoNumberSum(&array, 10)
        XCTAssertTrue(Set(result) == Set([11, -1]) || Set(result) == Set([-1, 11]))
    }
    
    func testNoNumbersSumUpToTarget() {
        var array = [1, 2, 3, 4, 5]
        let result = twoNumberSum.twoNumberSum(&array, 11)
        XCTAssertTrue(result.isEmpty)
    }
    
    func testRepeatedNumbers() {
        var array = [1, 4, 4, 5]
        let result = twoNumberSum.twoNumberSum(&array, 8)
        XCTAssertTrue(Set(result) == Set([4, 4]))
    }
    
    func testNegativeNumbers() {
        var array = [-1, -2, -3, -4, -5]
        let result = twoNumberSum.twoNumberSum(&array, -9)
        XCTAssertTrue(Set(result) == Set([-4, -5]) || Set(result) == Set([-5, -4]))
    }
    
    func testEmptyArray() {
        var array: [Int] = []
        let result = twoNumberSum.twoNumberSum(&array, 10)
        XCTAssertTrue(result.isEmpty)
    }

}
