//
//  Palindrome.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import Foundation

struct Stack {
    private var array = [Character]()
    
    mutating func push(_ x: Character) {
        array.append(x)
    }
    
    @discardableResult
    mutating func pop() -> Character? {
        array.popLast()
    }
    
    func peek() -> Character? {
        array.last
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
}

struct Palindrome {

    func isPalindrome(_ x: Int) -> Bool {
        var stack = Stack()
        var i = 0
        let input = String(x)
        let middleIndex = input.count / 2
        let isOdd = input.count % 2 != 0

        while i < input.count {
            let char = input[input.index(input.startIndex, offsetBy: i)]
            
            if isOdd && i == middleIndex {
                i += 1
                continue
            }

            if i < middleIndex {
                stack.push(char)

            } else {
                if stack.peek() == char {
                    stack.pop()
                } else {
                    break
                }
            }

            i += 1
        }

        return stack.isEmpty
    }
}
