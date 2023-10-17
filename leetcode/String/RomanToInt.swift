//
//  RomanToInt.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/17/23.
//

import Foundation

struct RomanToInt {
    
    func romanToInt(_ s: String) -> Int {
        let mapRomanToInt = [
            "I": 1, "IV": 4, "V": 5, "IX": 9, "X": 10,
            "XL": 40, "L": 50, "XC": 90, "C": 100,
            "CD": 400, "D": 500, "CM": 900, "M": 1000]
        let keysCanCombine: Set<String> = ["I", "X", "C"]
        var num = 0
        
        var currentIndex = 0
        while currentIndex < s.count {
            func convertSignToInt(sign: String) -> Int {
                return mapRomanToInt[sign] ?? 0
            }
            
            let startIndex = s.index(s.startIndex, offsetBy: currentIndex)
            let endIndex = s.index(s.startIndex, offsetBy: currentIndex + 1)
            let romanSign = s[startIndex ..< endIndex]
            
            if keysCanCombine.contains(String(romanSign)) {
                if currentIndex == s.count - 1 {
                    num += convertSignToInt(sign: String(romanSign))
                    currentIndex += 1
                    
                } else {
                    let startInnerIndex = s.index(s.startIndex, offsetBy: currentIndex)
                    let endInnerIndex = s.index(s.startIndex, offsetBy: currentIndex + 1)
                    let twoKeys = s[startInnerIndex ... endInnerIndex]
                    if let value = mapRomanToInt[String(twoKeys)] {
                        num += value
                        currentIndex += 2

                    } else {
                        num += convertSignToInt(sign: String(romanSign))
                        currentIndex += 1
                    }
                }
                
            } else {
                num += convertSignToInt(sign: String(romanSign))
                currentIndex += 1
            }
            
        }
        
        return num
    }
}
