//
//  TestMedianTwoSortedArray.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import XCTest
@testable import leetcode

final class TestMedianTwoSortedArray: XCTestCase {

    func testMedianTwoArray() {

        self.measure {
            
            // given
            let findMedian = MedianTwoSortedArray()
            let nums1 = [1, 2]
            let nums2 = [3, 4]
            
            // when
            let median = findMedian.findMedianSortedArrays(nums1, nums2)
            
            // then
            XCTAssertEqual(median, 2.5)
        }
    }
}
