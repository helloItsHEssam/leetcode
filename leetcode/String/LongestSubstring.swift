//
//  LongestSubstring.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import Foundation

struct LongestSubstring {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var chars: [Character] = []
        var maxSize = 0
        
        for char in s {
            if let findDuplicateChar = chars.firstIndex(of: char) {
                chars.removeSubrange(0 ... findDuplicateChar)
            }
            
            chars.append(char)
            maxSize = max(maxSize, chars.count)
        }

        return maxSize
    }
}
