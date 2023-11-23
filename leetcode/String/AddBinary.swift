//
//  AddBinary.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import Foundation

struct AddBinary {
    
    func addBinary(_ a: String, _ b: String) -> String {
        var sum = ""
        
        var aIndex = a.count - 1
        var bIndex = b.count - 1
        var carry = 0

        while aIndex >= 0 && bIndex >= 0 {
            let aChar = a[a.index(a.startIndex, offsetBy: aIndex)]
            let bChar = b[b.index(b.startIndex, offsetBy: bIndex)]
            
            switch (aChar, bChar) {
            case ("1","1"):
                if carry > 0 {
                    sum = "1" + sum
                } else {
                    sum = "0" + sum
                }
                carry = 1
                
            case ("1","0"), ("0", "1"):
                if carry > 0 {
                    sum = "0" + sum
                } else {
                    sum = "1" + sum
                }

            default:
                if carry > 0 {
                    sum = "1" + sum
                    carry = 0
                } else {
                    sum = "0" + sum
                }
            }
            
            aIndex -= 1
            bIndex -= 1
        }
        
        while aIndex >= 0 {
            let aChar = a[a.index(a.startIndex, offsetBy: aIndex)]
            if aChar == "1" {
                if carry > 0 {
                    sum = "0" + sum
                    carry = 1
                } else {
                    sum = "1" + sum
                }
            } else {
                if carry > 0 {
                    sum = "1" + sum
                    carry = 0
                } else {
                    sum = "0" + sum
                }
            }
            
            aIndex -= 1
        }
        
        while bIndex >= 0 {
            let bChar = b[b.index(b.startIndex, offsetBy: bIndex)]
            if bChar == "1" {
                if carry > 0 {
                    sum = "0" + sum
                    carry = 1
                } else {
                    sum = "1" + sum
                }
            } else {
                if carry > 0 {
                    sum = "1" + sum
                    carry = 0
                } else {
                    sum = "0" + sum
                }
            }
            
            bIndex -= 1
        }
        
        while carry > 0 {
            sum = "1" + sum
            carry = 0
        }
        
        return sum
    }
}
