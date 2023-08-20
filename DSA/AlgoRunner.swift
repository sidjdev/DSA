//
//  AlgoRunner.swift
//  DSA
//
//  Created by Sidharth J Dev on 16/08/23.
//

import Foundation


class AlgoRunner {
    
    enum Problems {
        case twoNumberSum
        case validSubSequence
        case sortedSquaredArray
        case tournamentWinners
        case transposeMatrix
        
        func params() -> Any {
            switch self {
            case .twoNumberSum:
                let array = [3, 5, -4, 8, 11, 1, -1, 6]
                let target = 10
                
                return (array, target)
                
            case .validSubSequence:
                let array = [5, 1, 22, 25, 6, -1, 8, 10]
                let sequence = [5, 1, 22, 25, 6, -1, 8, 10]
                return (array, sequence)
                
            case .sortedSquaredArray:
                let array = [1, 2, 3, 5, 6, 8, 9]
                return array
                
            case .tournamentWinners:
                let competitions =  [
                    ["HTML", "C#"],
                    ["C#", "Python"],
                    ["Python", "HTML"]
                ]
                let results = [0, 0, 1]
                
                return (competitions, results)
            case .transposeMatrix:
                let matrix = [[1, 2, 3],
                              [4, 5, 6]]
                return matrix
                
            }
        }
    }
    
    
    init() {
        
    }
    
    
    func runAlgorithm(_ problem: Problems, params: Any? = nil) {
        
        switch problem {
        case .twoNumberSum:
            let program = TwoNumberSum()
            if let params = params as? ([Int], Int) {
                var array = params.0
                let target = params.1
                
                print(program.twoNumberSum(&array, target))
            } else if let params = problem.params() as? ([Int], Int) {
                var array = params.0
                let target = params.1
                
                print(program.twoNumberSum(&array, target))
            }
        case .validSubSequence:
            let program = ValidateSubSequence()
            if let params = params as? ([Int], [Int]) {
                let array = params.0
                let sequence = params.1
                
                print(program.isValidSubsequence(array, sequence))
            } else if let params = problem.params() as? ([Int], [Int]) {
                let array = params.0
                let sequence = params.1
                
                print(program.isValidSubsequence(array, sequence))
            }
            
        case .sortedSquaredArray:
            let program = SortedSquaredArray()
            if let array = params as? [Int] {
                print(program.sortedSquaredArray(array))
            } else if let array = problem.params() as? [Int] {
                print(program.sortedSquaredArray(array))
            }
            
        case .tournamentWinners:
            let program = TournamentWinner()
            
            if let params = params as? ([[String]], [Int]) {
                let competitions = params.0
                let results = params.1
                
                print(program.tournamentWinner(competitions, results))
            } else if let params = problem.params() as? ([[String]], [Int]) {
                let competitions = params.0
                let results = params.1
                
                print(program.tournamentWinner(competitions, results))
            }
        case .transposeMatrix:
            let program = TransposeMatrix()
            if let params = params as? [[Int]] {
                let matrix = params
                print(program.transposeMatrix(matrix))
            } else if let params = problem.params() as? [[Int]] {
                let matrix = params
                print(program.transposeMatrix(matrix))
            }
        }
        
    }
}
