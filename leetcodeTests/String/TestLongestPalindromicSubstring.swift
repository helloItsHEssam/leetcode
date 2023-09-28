//
//  TestLongestPalindromicSubstring.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

import XCTest
@testable import leetcode

final class TestLongestPalindromicSubstring: XCTestCase {

    func testLongestPalindrome() {
        
        self.measure {
            
            // given
            let findLongest = LongestPalindromicSubstring()
            let string = "babad"
            
            // when
            let longestPalindromicString = findLongest.longestPalindrome(string)
            
            // then
            XCTAssertEqual(longestPalindromicString, "bab")
        }
    }
}
