//
//  secondLargestTests.swift
//  LeetCodeTests
//
//  Created by Suraj Thomas on 01/09/26.
//

import XCTest
@testable import LeetCode

class SecondLargestTests: XCTestCase {

    func testExample1() {
        let input = [12, 35, 1, 10, 34, 1]
        XCTAssertEqual(secondLargest(arr: input), 34)
    }
    
    func testExample2() {
        let input = [10, 5, 10]
        XCTAssertEqual(secondLargest(arr: input), 5)
    }
    
    func testExample3() {
        let input = [10, 10, 10]
        XCTAssertEqual(secondLargest(arr: input), -1)
    }
    
    func testInsufficientElements() {
        XCTAssertEqual(secondLargest(arr: [42]), -1)
        XCTAssertEqual(secondLargest(arr: []), -1)
    }
}
