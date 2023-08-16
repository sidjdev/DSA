//
//  TwoNumberSum.swift
//  DSA
//
//  Created by Sidharth J Dev on 16/08/23.
//

import Foundation

class TwoNumberSum {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    // Write your code here.
    var sumArray: [Int] = []
    
    var elementHash: [Int : Bool] = [:]
    
    array.forEach { element in
        let target = targetSum - element
        if elementHash[target] ?? false {
            return sumArray = [element, target]
            
        } else {
            elementHash[element] = true
        }
    }
    
    return sumArray
  }
}
