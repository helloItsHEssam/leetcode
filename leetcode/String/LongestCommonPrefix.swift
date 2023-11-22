//
//  LongestCommonPrefix.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import Foundation

struct LongestCommonPrefix {

    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 1 else { return strs.first ?? "" }

        var longestPrefix = strs.first!

        var i = 1
        while i < strs.count {
            
            var tempLongest = ""
            
            let rightStr = strs[i]
            let minCountBetweenTwoString = min(longestPrefix.count, rightStr.count)
            var j = 0
            
            while j < minCountBetweenTwoString {
                let leftChar = longestPrefix[longestPrefix.index(longestPrefix.startIndex,
                                                                 offsetBy: j)]
                let rightChar = rightStr[rightStr.index(rightStr.startIndex,
                                                                 offsetBy: j)]
                if leftChar == rightChar {
                    tempLongest.append(leftChar)
                } else {
                    if tempLongest.isEmpty {
                        return ""
                    } else {
                        break
                    }
                }
                
                j += 1
            }
            
            longestPrefix = tempLongest
            i += 1
        }

        return longestPrefix
    }
}
