//
//  RomanToIntTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/17/23.
//

import XCTest
@testable import leetcode

final class RomanToIntTests: XCTestCase {

    func testRomanToInt() {
        
        self.measure {
            
            // given
            let romanConverter = RomanToInt()
            let input = "MCMXCIV"
            
            // then
            let output = romanConverter.romanToInt(input)
            
            // when
            XCTAssertEqual(output, 1994)
        }
    }
}
