//
//  StringToInt.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/4/23.
//

import Foundation

struct StringToInt {
    
    func myAtoi(_ s: String) -> Int {
        let dbNumbers: Set<Character> = ["0", "1", "2",
                                         "3", "4", "5",
                                         "6", "7", "8",
                                         "9"]
        var number = ""
        
        for char in s {
            if dbNumbers.contains(char) {
                number.append(char)
                
            } else {
                if char == " " {
                    
                    if number.isEmpty {
                        continue
                    } else {
                        break
                    }
                    
                } else if char == "+" || char == "-" {
                    if number.isEmpty {
                        number.append(char)
                    } else {
                        break
                    }
                    
                } else {
                    if number.isEmpty {
                        return 0
                    } else {
                        break
                    }
                }
            }
        }
        
        if Double(number) == nil {
            return 0
        }
        
        if let num = Int32(number) {
            return Int(num)
            
        } else {
            if number.first == "-" {
                return Int(Int32.min)
            } else {
                return Int(Int32.max)
            }
        }
    }
}
