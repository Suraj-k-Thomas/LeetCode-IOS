//
//  MergeIntervalsTest.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 21/04/25.
//

import Testing
import XCTest
@testable import LeetCode

class MergeIntervalsTest: XCTestCase {
    
func test_mergeIntervals () {
   
    XCTAssertEqual(mergeIntervals( [[5, 6], [1, 4], [2, 3], [9, 12], [7, 10]]
), [[1, 4], [5, 6], [7, 12]]
)
    
    }
}


