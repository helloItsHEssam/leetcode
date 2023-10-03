//
//  ZigzagConversionTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/3/23.
//

import XCTest
@testable import leetcode

final class ZigzagConversionTests: XCTestCase {
    
    func testZigzagConversion() {
        
        self.measure {
            
            // given
            let zigzag = ZigzagConversion()
            let string = "PAYPALISHIRING"
            
            
            // when
            let zigzagConversion = zigzag.convert(string, 3)
            
            // then
            XCTAssertEqual(zigzagConversion, "PAHNAPLSIIGYIR")
        }
    }
}
