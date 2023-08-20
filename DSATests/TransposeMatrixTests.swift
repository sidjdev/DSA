//
//  TransposeMatrixTests.swift
//  DSATests
//
//  Created by Sidharth J Dev on 20/08/23.
//

import XCTest
@testable import DSA

final class TransposeMatrixTests: XCTestCase {
    var program: TransposeMatrix!
    
    override func setUp() {
        super.setUp()
        program = TransposeMatrix()
    }
    
    override func tearDown() {
        program = nil
        super.tearDown()
    }
    
    func testTransposeMatrix_With3x2Matrix() {
        let matrix = [
            [1, 2],
            [3, 4],
            [5, 6]
        ]
        let expected = [
            [1, 3, 5],
            [2, 4, 6]
        ]
        let result = program.transposeMatrix(matrix)
        XCTAssertEqual(result, expected)
    }
    
    func testTransposeMatrix_With2x3Matrix() {
        let matrix = [
            [1, 2, 3],
            [4, 5, 6]
        ]
        let expected = [
            [1, 4],
            [2, 5],
            [3, 6]
        ]
        let result = program.transposeMatrix(matrix)
        XCTAssertEqual(result, expected)
    }
    
    func testTransposeMatrix_WithEmptyMatrix() {
        let matrix: [[Int]] = []
        let expected: [[Int]] = []
        let result = program.transposeMatrix(matrix)
        XCTAssertEqual(result, expected)
    }
    
    func testTransposeMatrix_WithSingleRowMatrix() {
        let matrix = [
            [1, 2, 3]
        ]
        let expected = [
            [1],
            [2],
            [3]
        ]
        let result = program.transposeMatrix(matrix)
        XCTAssertEqual(result, expected)
    }
    
    func testTransposeMatrix_WithSingleColumnMatrix() {
        let matrix = [
            [1],
            [2],
            [3]
        ]
        let expected = [
            [1, 2, 3]
        ]
        let result = program.transposeMatrix(matrix)
        XCTAssertEqual(result, expected)
    }
    
    func testTransposeMatrix_WithSquareMatrix() {
        let matrix = [
            [1, 2],
            [3, 4]
        ]
        let expected = [
            [1, 3],
            [2, 4]
        ]
        let result = program.transposeMatrix(matrix)
        XCTAssertEqual(result, expected)
    }
    
}
