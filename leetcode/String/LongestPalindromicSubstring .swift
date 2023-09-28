//
//  LongestPalindromicSubstring .swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

import Foundation

struct LongestPalindromicSubstring  {
    
    func longestPalindrome(_ s: String) -> String {
        let count = s.count
        let array = Array(s)
        
        guard count > 1 else { return s }
        
        var lhs = 0
        var rhs = 0
        
        // create 2D array from bool with false
        var dp = Array(repeating: Array(repeating: false, count: count), count: count)
        
        for i in 1 ..< count {
            for j in 0 ..< i where array[j] == array[i] && (dp[j+1][i-1] || i - j <= 2) {
                dp[j][i] = true
                if i - j > rhs - lhs {
                    lhs = j
                    rhs = i
                }
            }
        }
        
        return String(array[lhs...rhs])
    }
}
