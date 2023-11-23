//
//  PlusOne.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import Foundation

struct PlusOne {
    
    func plusOne(_ digits: [Int]) -> [Int] {
        var newArray = Array(repeating: 0, count: digits.count + 1)
        
        var indexForOld = digits.count - 1
        var indexForNew = newArray.count - 1
        var carry = 0
        
        while indexForOld >= 0 {
                        
            var plusOneItem = digits[indexForOld] + carry
            if indexForOld == digits.count - 1 {
                plusOneItem += 1
            }
            
            if plusOneItem > 9 {
                carry = 1
                newArray[indexForNew] = 0
                
            } else {
                carry = 0
                newArray[indexForNew] = plusOneItem
            }
            
            indexForNew -= 1
            indexForOld -= 1
        }
        
        if carry == 1 {
            newArray[0] = 1
            return newArray
            
        } else {
            return Array(newArray[1 ..< newArray.count])
        }
    }
}
