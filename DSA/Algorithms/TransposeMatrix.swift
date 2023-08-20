//
//  TransposeMatrix.swift
//  DSA
//
//  Created by Sidharth J Dev on 20/08/23.
//

import Foundation


class TransposeMatrix {
    func transposeMatrix(_ matrix: [[Int]]) -> [[Int]] {
        // Write your code here.
        if matrix.count == 0 {
            return []
        }
        let outerCount = matrix.count
        let innerCount = matrix[0].count
        
        let innerEmpty = Array(repeating: 0, count: outerCount)
        var transpose = [[Int]] (Array(repeating: innerEmpty, count: innerCount))
        
        for i in 0..<outerCount {
            for j in 0..<innerCount {
                transpose[j][i] = matrix[i][j]
            }
        }
        
        return transpose
    }
}
