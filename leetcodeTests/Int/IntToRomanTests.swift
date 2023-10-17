//
//  IntToRomanTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/15/23.
//

import XCTest
@testable import leetcode

final class IntToRomanTests: XCTestCase {

    func testIntToRoman() {
        
        self.measure {
            
            // given
            let romanConverter = IntToRoman()
            let input = 1994
            
            // then
            let output = romanConverter.intToRoman(input)
            
            // when
            XCTAssertEqual(output, "MCMXCIV")
        }
    }
}
