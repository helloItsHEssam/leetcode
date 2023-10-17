//
//  IntToRoman.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/15/23.
//

import Foundation

struct IntToRoman {
    
    func intToRoman(_ num: Int) -> String {
        let mapIntToRoman = [
            1: "I", 4: "IV", 5: "V", 9: "IX", 10: "X",
            40: "XL", 50: "L", 90: "XC", 100: "C",
            400: "CD", 500: "D", 900: "CM", 1000: "M"
        ]
        let keysNumber = mapIntToRoman.keys
        var num = num
        var retValue = ""
        
        while num > 0 {
            let lowerKeys = keysNumber.filter { $0 <= num }
            if let maxKey = lowerKeys.max() {
                if let value = mapIntToRoman[maxKey] {
                    retValue += value
                    num -= maxKey
                }
            }
        }
        
        return retValue
    }
}
