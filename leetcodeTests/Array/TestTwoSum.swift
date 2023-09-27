//
//  TestTwoSum.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import XCTest
@testable import leetcode

final class TestTwoSum: XCTestCase {

    func testTwoSum() {
        
        // given
        let twoSum = TwoSum()
        let nums = [2,11,15, 7]
        let target = 9
        
        // when
        let arrayResult = twoSum.twoSum(nums, target)
        
        // then
        XCTAssertEqual(arrayResult.first, 0)
        XCTAssertEqual(arrayResult.last, 3)
    }
    
    func testSecondTwoSum() {
        
        // given
        let twoSum = TwoSum()
        let nums = [3,2,4]
        let target = 6
        
        // when
        let arrayResult = twoSum.twoSum(nums, target)
        
        // then
        XCTAssertEqual(arrayResult.first, 1)
        XCTAssertEqual(arrayResult.last, 2)
    }
    
    func testThirdTwoSum() {
        
        // given
        let twoSum = TwoSum()
        let nums = [3,3]
        let target = 6
        
        // when
        let arrayResult = twoSum.twoSum(nums, target)
        
        // then
        XCTAssertEqual(arrayResult.first, 0)
        XCTAssertEqual(arrayResult.last, 1)
    }
    
    func testNotFoundTwoSum() {
        
        // given
        let twoSum = TwoSum()
        let nums = [3,3]
        let target = 5
        
        // when
        let arrayResult = twoSum.twoSum(nums, target)
        
        // then
        XCTAssertTrue(arrayResult.isEmpty)
    }
}
