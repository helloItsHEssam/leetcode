//
//  ReverseInteger.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 10/3/23.
//

import Foundation

struct ReverseInteger {
    
    func reverse(_ x: Int) -> Int {
        var originalNumber = x
        if x < 0 {
            originalNumber *= -1
        }
        print(originalNumber)
        var reverseNumber = 0
        while originalNumber != 0 {
            
            reverseNumber = reverseNumber * 10;
            reverseNumber = reverseNumber + (originalNumber % 10);
            originalNumber = originalNumber / 10;
        }
        
        guard (Int(Int32.min)..<Int(Int32.max)).contains(reverseNumber) else { return 0 }
        return x < 0 ? reverseNumber * -1 : reverseNumber
    }
}
