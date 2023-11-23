//
//  AddBinaryTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import XCTest
@testable import leetcode

final class AddBinaryTests: XCTestCase {

    func testPerformanceExample() throws {
        
        self.measure {
            // given
            let adder = AddBinary()
//            let a = "1010", b = "1011"
            let a = "100", b = "110010"
            
            // when
            let newSum = adder.addBinary(a, b)
            
            // then
            XCTAssertEqual(newSum, "10101")
        }
    }
}
