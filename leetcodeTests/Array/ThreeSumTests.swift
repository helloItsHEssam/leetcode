//
//  ThreeSumTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/17/23.
//

import XCTest
@testable import leetcode

final class ThreeSumTests: XCTestCase {

    func testThreeSum() {
        
        self.measure {
            // given
            let convertor = ThreeSum()
            let nums = [-1, 0, 1, 2, -1, -4]
            
            // when
            let outPut = convertor.threeSum(nums)
            
            // then
            XCTAssertEqual(outPut.count, 2)
        }
    }
}
