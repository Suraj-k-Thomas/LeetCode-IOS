//
//  ValidParenthesesTests.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 19/04/25.
//

import Testing
import XCTest
class ValidParenthesesTests:XCTestCase {
    
    
    func testInValidBraces(){
        
        XCTAssertFalse(validBraces("{{}}[{]"))
    }
    
    func testValidBraces(){
        
        XCTAssertTrue(validBraces("{{}}[]"))
    }
}

func validBraces(_ s: String) -> Bool {

    let pairs: [Character: Character] = [")":"(", "]":"[" ,"}":"{"]
    var stack: [Character] = []
    for char in s {
        
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        }else  if let match = pairs[char]{
            
            
            if   stack.isEmpty || stack.popLast() != match{
                return false
                
            }
        }
        print("stack \(stack)")

    }
    
    return stack.isEmpty
    
}


/**
 
 Given a string s containing just the characters '(', ')', '{', '}', '[', and ']', determine if the input string is valid.
 
 ✅ A valid string must:
 Open brackets must be closed by the same type of bracket
 Brackets must be closed in the correct order
 Every closing bracket must have a corresponding open bracket

 Input: "()"       → Output: true
 Input: "()[]{}"   → Output: true
 Input: "(]"       → Output: false
 Input: "([)]"     → Output: false
 Input: "{[]}"     → Output: true

 */

/*
 solution
 * using stack
 * use dictionary to store  closing  and the  matching opening paranthesis.
 *Traverse through string , if char equals opening string add to stack.
 *else pop the top of the stack
 
 * Check if current item on top of stack is theopening paranthesis  of the current  char .
 based on this condition return true or false
 
 */
