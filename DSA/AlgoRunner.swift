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
        }
        
    }
}
