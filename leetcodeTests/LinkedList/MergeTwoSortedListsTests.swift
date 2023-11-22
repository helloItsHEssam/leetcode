//
//  MergeTwoSortedListsTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import XCTest
@testable import leetcode

final class MergeTwoSortedListsTests: XCTestCase {

    func testSorted() {
        
        self.measure {
            
            // given
            let list1 = [1, 2, 4].convertToLinkedList()
            let list2 = [1, 3, 4].convertToLinkedList()
            let validator = MergeTwoSortedLists()
            
            // when
            let mergerdList = validator.mergeTwoLists(list1, list2)
            let list = mergerdList?.convertToArray()
            
            // then
            XCTAssertEqual(list, [1, 1, 2, 3, 4, 4])
        }
    }
}
