//
//  LongestSubstringTests.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 18/04/25.
//

import XCTest
@testable import LeetCode

final class LongestSubstringTests: XCTestCase {
    
    
    func testLongestSubstringforemptySubstring() {
        let string = ""

        XCTAssertEqual(lengthOfLongestSubstring(string), 0)
    }
    
    func testLongestSubstringWithValidString() {
        
        let string = "abcabcbb"
        
        XCTAssertEqual(lengthOfLongestSubstring(string), 3)
        
    }
    
}



