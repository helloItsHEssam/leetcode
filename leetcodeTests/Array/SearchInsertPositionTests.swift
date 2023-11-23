//
//  SearchInsertPositionTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import XCTest
@testable import leetcode

final class SearchInsertPositionTests: XCTestCase {

    func testFindPosition() {
        self.measure {
            
            // given
            let finder = SearchInsertPosition()
            let nums = [1, 3, 5]
            let target = 4

            // when
            let index = finder.searchInsert(nums, target)
            
            // then
            XCTAssertEqual(index, 2)
        }
    }

}
