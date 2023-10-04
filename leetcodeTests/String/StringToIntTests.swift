//
//  StringToIntTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/4/23.
//

import XCTest
@testable import leetcode

final class StringToIntTests: XCTestCase {
    
    func testAtoi() {
        
        self.measure {
            
            // given
            let stringToIntConvertor = StringToInt()
            let str = "+-12"
            
            // when
            let number = stringToIntConvertor.myAtoi(str)
            
            // then
            XCTAssertEqual(number, 0)
        }
    }
}
