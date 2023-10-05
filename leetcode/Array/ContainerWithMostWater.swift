//
//  ContainerWithMostWater.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/5/23.
//

import Foundation

struct ContainerWithMostWater {
    
    func maxArea(_ height: [Int]) -> Int {
        var maxContainer: Int = 0
        
        var leftPtr = 0
        var rightPtr = height.count - 1

        while leftPtr < rightPtr {
            let distance = rightPtr - leftPtr
            let minHeight = min(height[leftPtr], height[rightPtr])
            
            let maxAreaInShortDistance = minHeight * distance
            maxContainer = max(maxContainer, maxAreaInShortDistance)
            
            
            height[leftPtr] < height[rightPtr] ? (leftPtr += 1) : (rightPtr -= 1)
        }
        return maxContainer
    }
}
