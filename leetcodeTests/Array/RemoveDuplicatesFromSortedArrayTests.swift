//
//  RemoveDuplicatesFromSortedArrayTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import XCTest
@testable import leetcode

final class RemoveDuplicatesFromSortedArrayTests: XCTestCase {
    
    func testRemoveDuplicate() {
        
        // given
        let remover = RemoveDuplicatesFromSortedArray()
        var nums = [1, 1, 2]
        
        // when
        let k = remover.removeDuplicates(&nums)

        // then
        XCTAssertEqual(k, 2)
        XCTAssertEqual(nums[0 ..< k], [1, 2])
    }
}
