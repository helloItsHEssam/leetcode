//
//  RemoveDuplicatesFromSortedArray.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import Foundation

struct RemoveDuplicatesFromSortedArray {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        var k = 1
        var i = 1
        
        while i < nums.count {
            if nums[k - 1] != nums[i] {
                nums[k] = nums[i]
                k += 1
            }

            i += 1
        }
        
        return k
    }
}
