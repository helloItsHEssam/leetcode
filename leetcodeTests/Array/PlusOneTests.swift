//
//  PlusOneTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import XCTest
@testable import leetcode

final class PlusOneTests: XCTestCase {

    func testPlusOne() {
        self.measure {
            // given
            let pluser = PlusOne()
            let digits = [1,2,3]
            
            // when
            let newArray = pluser.plusOne(digits)
            
            // then
            XCTAssertEqual(newArray, [1, 2, 4])
        }
    }

}
