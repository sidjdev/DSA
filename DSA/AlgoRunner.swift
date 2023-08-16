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
        
        
        
        
        
        
        
        func params() -> Any? {
            
            
            return nil
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
            }
        }
        
    }
}
