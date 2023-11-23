//
//  FirstOccurrenceInAString.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import Foundation

struct FirstOccurrenceInAString {

    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count <= haystack.count else {
            return -1
        }
        
        var i = 0
        let maxIndexForCheck = haystack.count - needle.count
        while i <= maxIndexForCheck {
            let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
            let endIndex = haystack.index(startIndex, offsetBy: needle.count)
            let sub = haystack[startIndex ..< endIndex]
            if  sub == needle {
                return i
            }
            
            i += 1
        }
        
        return -1
    }
}
