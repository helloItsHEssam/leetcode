//
//  FirstOccurrenceInAStringTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import XCTest
@testable import leetcode

final class FirstOccurrenceInAStringTests: XCTestCase {
    
    func testFindIndex() {
        self.measure {
            // given
            let finder = FirstOccurrenceInAString()
//            let haystack = "sadbutsad", needle = "sad"
//            let haystack = "leetcode", needle = "leeto"
            let haystack = "c", needle = "c"
            
            // when
            let index = finder.strStr(haystack, needle)
            
            // then
            XCTAssertEqual(index, 0)
        }
    }
}
