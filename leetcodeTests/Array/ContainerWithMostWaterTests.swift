//
//  ContainerWithMostWaterTests.swift
//  leetcodeTests
//
//  Created by Hessam Mahdiabadi on 10/5/23.
//

import XCTest
@testable import leetcode

final class ContainerWithMostWaterTests: XCTestCase {
    
    func testCalculateMostWater() {
        
        self.measure {
            
            // given
            let calculator = ContainerWithMostWater()
            let height = [1,8,6,2,5,4,8,3,7]
            
            // when
            let outPut = calculator.maxArea(height)
            
            // then
            XCTAssertEqual(outPut, 49)
        }
    }
}
