//
//  ValidateSubSequence.swift
//  DSA
//
//  Created by Sidharth J Dev on 16/08/23.
//

import Foundation


class ValidateSubSequence {
    func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
        // Write your code here.
        var value = false
        var subSequence = sequence
        if subSequence.count > array.count {
            return false
        }
        if subSequence == array {
            return true
        }
        array.forEach { element in
            if subSequence.contains(element), let item = subSequence.first, item == element {
                subSequence.remove(at: 0)
            } else if subSequence.contains(element), let item = subSequence.first, item != element {
                return value = false
            }
        }
        if subSequence.isEmpty {
            return true
        }
        return value
      }
    
    func isValidSubsequenceSolutionTwo(_ array: [Int], _ sequence: [Int]) -> Bool {
        // Write your code here.
        var sequenceIndex = 0
        var arrayIndex = 0

        while sequenceIndex < sequence.count && arrayIndex < array.count {
            if array[arrayIndex] == sequence[sequenceIndex] {
                sequenceIndex += 1
            }
            arrayIndex += 1
        }

        return sequenceIndex == sequence.count
      }
}
