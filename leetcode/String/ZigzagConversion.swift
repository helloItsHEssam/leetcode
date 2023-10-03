//
//  ZigzagConversion.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/3/23.
//

import Foundation

struct ZigzagConversion {
    
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else { return s }
        
        var innerArray = [Character]()
        innerArray.reserveCapacity(s.count / numRows)
        var arr = Array(repeating: innerArray, count: numRows)
        var isUpDirection = false
        var iteratorArray = s.makeIterator()

        var j = 0
        while let char = iteratorArray.next() {
            
            if j == -1 {
                j = 1
                isUpDirection.toggle()
            }
            
            arr[j].append(char)
            
            j = isUpDirection ? j + 1 : j - 1
            
            if j == numRows {
                j = numRows - 2
                isUpDirection.toggle()
            }
        }
        
        return arr
            .compactMap { $0 }
            .reduce("") { result, char in
                return result + char
            }
    }
}
