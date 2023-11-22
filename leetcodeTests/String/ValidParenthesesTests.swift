//
//  ValidParenthesesTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import XCTest
@testable import leetcode

final class ValidParenthesesTests: XCTestCase {

    func testLongestPrefix() {
        
        self.measure {
            
            // given
            let s = "()[]{}"
            let validator = ValidParentheses()
            
            // when
            let isValid = validator.isValid(s)
            
            // then
            XCTAssertEqual(isValid, true)
        }
    }
}
