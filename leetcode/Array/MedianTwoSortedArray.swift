//
//  MedianTwoSortedArray.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import Foundation

struct MedianTwoSortedArray {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // merge two array
        var combineNums: [Int] = []
        combineNums.reserveCapacity(nums1.count + nums2.count)
        
        var counterForNums1 = 0
        var counterForNums2 = 0
        var counterForCobmineNums = 0
        
        while counterForNums1 < nums1.count && counterForNums2 < nums2.count {
            
            if nums1[counterForNums1] <= nums2[counterForNums2] {
                combineNums.append(nums1[counterForNums1])
                counterForNums1 += 1
            } else {
                combineNums.append(nums2[counterForNums2])
                counterForNums2 += 1
            }
            
            counterForCobmineNums += 1
        }
        
        while counterForNums1 < nums1.count {
            combineNums.append(nums1[counterForNums1])
            counterForNums1 += 1
            counterForCobmineNums += 1
        }
        
        while counterForNums2 < nums2.count {
            combineNums.append(nums2[counterForNums2])
            counterForNums2 += 1
            counterForCobmineNums += 1
        }
        
        let count = combineNums.count
        if count % 2 != 0 {
            return Double(combineNums[count / 2])
        } else {
            return Double(combineNums[count / 2] + combineNums[count / 2 - 1]) / 2.0
        }
    }
}
