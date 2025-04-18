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
        
        XCTAssertEqual(lengthOfLongestSubstring(string), 3)    }
    
    func testLongestSubstringWithValidStringusingSetandWindow() {
        
        let string = "abcdabcbb"
        
        XCTAssertEqual(lengthOfLongestSubstringUsingSet(string), 4)
    }
    
}


//
//func lengthOfLongestSubstringUsingSet(_ s: String) -> Int {
//    var charSet = Set<Character>()
//    var left = s.startIndex
//    var maxLength = 0
//
//    var right = left
//    while right < s.endIndex {
//        let char = s[right]
//        if !charSet.contains(char) {
//            charSet.insert(char)
//            maxLength = max(maxLength, s.distance(from: left, to: right) + 1)
//            right = s.index(after: right)
//        } else {
//            charSet.remove(s[left])
//            left = s.index(after: left)
//        }
//    }
//
//    return maxLength
//}

