//
//  TestAddTwoSumNumber.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import XCTest
@testable import leetcode

final class TestAddTwoSumNumber: XCTestCase {
    
    func testAddTwoSumNumber() {
        
        // given
        let addTwoSumNumber = AddTwoSumNumber()
        let listOne = [2, 4, 3].convertToLinkedList()
        let listTwo = [5, 6, 4].convertToLinkedList()
        
        // when
        let node = addTwoSumNumber.addTwoNumbers(listOne, listTwo)?.convertToArray()
        
        // then
        XCTAssertEqual(node?.first, 7)
    }
    
    func testSecondCase() {
        
        // given
        let addTwoSumNumber = AddTwoSumNumber()
        let listOne = [9,9,9,9,9,9,9].convertToLinkedList()
        let listTwo = [9,9,9,9].convertToLinkedList()
        
        // when
        let node = addTwoSumNumber.addTwoNumbers(listOne, listTwo)?.convertToArray()
        
        // then
        XCTAssertEqual(node?.count, 8)
        XCTAssertEqual(node?.last, 1)
        XCTAssertEqual(node?.first, 8)
    }
    
    func testThirdCase() {
        
        // given
        let addTwoSumNumber = AddTwoSumNumber()
        let listOne = [0].convertToLinkedList()
        let listTwo = [0].convertToLinkedList()
        
        // when
        let node = addTwoSumNumber.addTwoNumbers(listOne, listTwo)?.convertToArray()
        
        // then
        XCTAssertEqual(node?.count, 1)
        XCTAssertEqual(node?.first, 0)
    }
}

extension Array where Element == Int {
    
    func convertToLinkedList() -> ListNode {
        let root = ListNode(self[0])
        var temp = root
        for i in 1 ..< self.count {
            let node = ListNode(self[i])
            temp.next = node
            temp = node
        }

        return root
    }
}

extension ListNode {
    
    func convertToArray() -> [Int] {
        var array: [Int] = []
        var temp: ListNode? = self
        
        while temp != nil {
            if let val = temp?.val {
                array.append(val)
            }
            temp = temp?.next
        }
        
        return array
    }
}
