//
//  ReverseIntegerTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/3/23.
//

import XCTest
@testable import leetcode

final class ReverseIntegerTests: XCTestCase {

    func testReverseInteger() {
        
        self.measure {
            
            // given
            let reverser = ReverseInteger()
            
            // when
            let reverseInteger = reverser.reverse(1534236469)
            
            // then
            XCTAssertEqual(reverseInteger, 0)
        }
    }
}
