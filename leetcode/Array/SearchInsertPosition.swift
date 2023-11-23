//
//  SearchInsertPosition.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import Foundation

struct SearchInsertPosition {

    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if target > nums[nums.count - 1] {
            return nums.count
        } else if target == nums[nums.count - 1] {
            return nums.count - 1
        }
        
        if target <= nums[0] {
            return 0
        }
        
        var nums = nums

        if nums.count % 2 != 0 {
            nums.append(nums[nums.count - 1] + 1)
        }
        
        var high = nums.count
        var low = 0
        
        while low <= high {
            let mid = (low + high) / 2
            
            if nums[mid] == target {
                return mid
                
            } else if nums[mid] > target {
                if low == high {
                    if nums[mid] > target {
                        return low
                    } else {
                        return low + 1
                    }
                } else {
                    high = mid - 1
                }
                                
            } else {
                if low == high {
                    if nums[mid] > target {
                        return low
                    } else {
                        return low + 1
                    }
                } else {
                    low = mid + 1
                }
            }
        }
        return -1
    }
}
