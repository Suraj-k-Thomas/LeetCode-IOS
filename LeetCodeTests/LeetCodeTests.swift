//
//  LeetCodeTests.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 18/04/25.
//

import XCTest
@testable import LeetCode

final class LeetCodeTests: XCTestCase {
    
    
    func test_FITS_returnsEmptyArray() {
        
        let nums = [Int]()
        let target = 9
        let result = FindIndexOfTargrtSum(nums: nums, target: target)
        
        XCTAssertEqual(result, [])
    }
    
    func test_FITS_returnsResult() {
        
        let nums = [2,7,11,15]
        let target = 9
        let result = FindIndexOfTargrtSum(nums: nums, target: target)
        
        XCTAssertEqual(result, [0,1])
    }
    
    func test_FITS_returnsResultonInvalidInput() {
        
        let nums = [1,2,11,15]
        let target = 9
        let result = FindIndexOfTargrtSum(nums: nums, target: target)
        
        XCTAssertEqual(result, [])
    }
    func test_FITS_returnsResultWithCompactMap() {
        
        let nums = [2,7,11,15]
        let target = 9
        let result = FindIndexOfTargrtSumWithCompactMap(nums: nums, target: target)
        
        XCTAssertEqual(result, [0,1])
    }
    
}

