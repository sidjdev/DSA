//
//  SortedSquaredArrayTests.swift
//  DSATests
//
//  Created by Sidharth J Dev on 16/08/23.
//

import XCTest
@testable import DSA

final class SortedSquaredArrayTests: XCTestCase {
    
    var program: SortedSquaredArray!
    
    override func setUp() {
        super.setUp()
        program = SortedSquaredArray()
    }
    
    override func tearDown() {
        program = nil
        super.tearDown()
    }
    
    func testSortedSquaredArrayPositiveIntegers() {
        let result = program.sortedSquaredArray([1, 2, 3, 4, 5])
        XCTAssertEqual(result, [1, 4, 9, 16, 25])
    }
    
    func testSortedSquaredArrayNegativeIntegers() {
        let result = program.sortedSquaredArray([-5, -4, -3, -2, -1])
        XCTAssertEqual(result, [1, 4, 9, 16, 25])
    }
    
    func testSortedSquaredArrayMixedIntegers() {
        let result = program.sortedSquaredArray([-4, -2, 0, 2, 4])
        XCTAssertEqual(result, [0, 4, 4, 16, 16])
    }
    
    func testSortedSquaredArrayEmptyArray() {
        let result = program.sortedSquaredArray([])
        XCTAssertEqual(result, [])
    }
    
    func testSortedSquaredArraySingleElement() {
        let result1 = program.sortedSquaredArray([-5])
        XCTAssertEqual(result1, [25])
        
        let result2 = program.sortedSquaredArray([0])
        XCTAssertEqual(result2, [0])
        
        let result3 = program.sortedSquaredArray([5])
        XCTAssertEqual(result3, [25])
    }
    
    func testSortedSquaredArrayWithZeros() {
        let result = program.sortedSquaredArray([-5, -4, 0, 3, 4])
        XCTAssertEqual(result, [0, 9, 16, 16, 25])
    }
}
