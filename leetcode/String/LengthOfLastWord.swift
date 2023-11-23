//
//  LengthOfLastWord.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import Foundation

struct LengthOfLastWord {
    
    func lengthOfLastWord(_ s: String) -> Int {
        var isFindLastCharThatIsNotSpace = false
        var count = 0
        var index = s.count - 1
        
        while index >= 0 {
            let charIndex = s.index(s.startIndex, offsetBy: index)
            let char = s[charIndex]
            if char != " " {
                isFindLastCharThatIsNotSpace = true
                count += 1
            } else {
                if isFindLastCharThatIsNotSpace {
                    break
                }
            }
            
            index -= 1
        }
        
        return count
    }
}
