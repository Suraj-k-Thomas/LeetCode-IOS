//
//  LongestSubstringTests.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 18/04/25.
//

import XCTest
//@testable import LeetCode

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
func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var maxLength = 0
    var substring = ""
    
    for char in s {
        
        if substring.contains(char) {
            
        if let index = substring.firstIndex(of: char) {
                
            substring.removeSubrange(...index)
            
            }
        }
        
        substring.append(char)
        maxLength = max(maxLength, substring.count)
        
        
    }
        
    
    return maxLength
}

//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var maxLength = 0
//    var currentSubstring = ""
//
//    for char in s {
//        if currentSubstring.contains(char) {
//            // Remove characters from start up to the repeated char
//            if let index = currentSubstring.firstIndex(of: char) {
//                currentSubstring.removeSubrange(...index)
//            }
//        }
//        currentSubstring.append(char)
//        maxLength = max(maxLength, currentSubstring.count)
//    }
//
//    return maxLength
//}


