//
//  TestLongestSubstring.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import XCTest
@testable import leetcode

final class TestLongestSubstring: XCTestCase {

    func testFirstLongestSub() {
        
        self.measure {
            
            // given
            let s = "abcabcbb"
            let subStringCalculator = LongestSubstring()
            
            // when
            let substringSize = subStringCalculator.lengthOfLongestSubstring(s)
            
            // then
            XCTAssertEqual(substringSize, 3)
        }
    }
}
