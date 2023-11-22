//
//  ValidParentheses.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import Foundation

struct ValidParentheses {

    func isValid(_ s: String) -> Bool {
        var stack = Stack()
        var i = 0

        while i < s.count {
            let char = s[s.index(s.startIndex, offsetBy: i)]
            if stack.peek() == makePairChar(char) {
                stack.pop()
            } else {
                stack.push(char)
            }

            i += 1
        }
        
        return stack.isEmpty
    }
    
    func makePairChar(_ char: Character) -> Character {
        if char == ")" {
            return "("
        } else if char == "]" {
            return "["
            
        } else if char == "}" {
            return "{"
            
        } else {
            return " "
        }
    }
}
