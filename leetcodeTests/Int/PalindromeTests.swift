//
//  PalindromeTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import XCTest
@testable import leetcode

final class PalindromeTests: XCTestCase {

    func testIsPalindrome() {
        
        self.measure {
            
            // given
            let romanConverter = Palindrome()
            let input = 121
            
            // then
            let output = romanConverter.isPalindrome(input)
            
            // when
            XCTAssertEqual(output, true)            
        }
    }
}
