//
//  ValidParenthesesTests.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 19/04/25.
//

import Testing
import XCTest
@testable import LeetCode
class ValidParenthesesTests:XCTestCase {
    
    
    func testInValidBraces(){
        
        XCTAssertFalse(validBraces("{{}}[{]"))
    }
    
    func testValidBraces(){
        
        XCTAssertTrue(validBraces("{{}}[]"))
    }
}




