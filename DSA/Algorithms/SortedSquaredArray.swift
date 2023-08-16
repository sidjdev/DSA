//
//  SortedSquaredArray.swift
//  DSA
//
//  Created by Sidharth J Dev on 16/08/23.
//

import Foundation


class SortedSquaredArray {
    
    
    func sortedSquaredArray(_ array: [Int]) -> [Int] {
        // Write your code here.
        var squaredArray: [Int] = []
        array.forEach { item in
            squaredArray.append(item * item)
        }
        return squaredArray.sorted()
    }
    
    
    func sortedSquaredArraySolutionTwo(_ array: [Int]) -> [Int] {
        // Write your code here.
        var squaredArray: [Int] = [Int](repeatElement(0, count: array.count))
        
        var start = 0
        var end = array.count - 1
        
        var entryPoint = end
        while start <= end {
            if abs(array[start]) < abs(array[end]) {
                squaredArray[entryPoint] = array[end] * array[end]
                end -= 1
            } else {
                squaredArray[entryPoint] = array[start] * array[start]
                start += 1
            }
            entryPoint -= 1
        }
        
        return squaredArray
    }
}
