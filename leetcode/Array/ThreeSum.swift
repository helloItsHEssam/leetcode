//
//  ThreeSum.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/17/23.
//

import Foundation

struct ThreeSum {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var i = 0
        var retVal: Set<[Int]> = []
        let sorted = nums.sorted()
        
        while i < sorted.count - 2 {
            var j = i + 1
            var k = sorted.count - 1
            
            while j < k {
                let sum = sorted[i] + sorted[j] + sorted[k]
                if sum == 0 {
                    retVal.insert([sorted[i], sorted[j], sorted[k]])
                    j += 1
                    k -= 1
                    
                }  else if sum < 0 {
                    j += 1
                    
                } else {
                    k -= 1
                }
            }
            
            i += 1
        }
        
        return Array(retVal)
    }
}
