//
//  LongestCommonPrefixTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import XCTest
@testable import leetcode

final class LongestCommonPrefixTests: XCTestCase {

    func testLongestPrefix() {
        
        self.measure {
            
            // given
            let strs = ["flower","flow","flight"]
            let subStringCalculator = LongestCommonPrefix()
            
            // when
            let longest = subStringCalculator.longestCommonPrefix(strs)
            
            // then
            XCTAssertEqual(longest, "fl")
        }
    }
}
