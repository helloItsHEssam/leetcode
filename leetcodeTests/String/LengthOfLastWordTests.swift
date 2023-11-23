//
//  LengthOfLastWordTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 11/23/23.
//

import XCTest
@testable import leetcode

final class LengthOfLastWordTests: XCTestCase {
    
    func testFindLength() {
        self.measure {
            // given
            let finder = LengthOfLastWord()
            let s = "Hello World" // 5
            
            // when
            let length = finder.lengthOfLastWord(s)
            
            // then
            XCTAssertEqual(length, 5)
        }
    }
}
