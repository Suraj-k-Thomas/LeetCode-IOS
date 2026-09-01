//
//  GroupAnagramsTest.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 13/05/25.
//

import Testing
import XCTest
@testable import LeetCode

class GroupAnagramsTest : XCTestCase {

//    func test_ChaeckgroupAnagrams_returnsEmptyArray () {
//        
//      let Input =  ["eat", "tea", "tan", "ate", "nat", "bat"]
//        let output = groupAnagrams(Input)
//     
//        let setinput = Set(Set(output.map({ Set($0)})))
//        let setoutput : Set<Set<String>> = [
//            Set(["eat","tea","ate"]),
//        Set(["tan","nat"]),
//        Set(["bat"])]
//        
//        print("setinput = \(setinput) , setoutput = \(setoutput)")
////        let  OutputResult = [["eat","tea","ate"],["tan","nat"],["bat"]]
//        XCTAssertEqual(setinput, setoutput)
//
//    }
    
   

   

        func testGroupAnagrams_basicCase() {
            let input = ["0", "tea", "tan", "ate", "nat", "bat"]
            let result = groupAnagrams(input)

            let expectedGroups: Set<Set<String>> = [
                ["eat", "tea", "ate"],
                ["tan", "nat"],
                ["bat"]
            ]

            let resultSet = Set(result.map { Set($0) })

            XCTAssertEqual(resultSet, expectedGroups)
        }

        func testGroupAnagrams_emptyInput() {
            let input: [String] = []
            let result = groupAnagrams(input)
            XCTAssertEqual(result.count, 0)
        }

        func testGroupAnagrams_singleElement() {
            let input = ["abc"]
            let result = groupAnagrams(input)
            XCTAssertEqual(result, [["abc"]])
        }

        func testGroupAnagrams_duplicates() {
            let input = ["bob", "obb", "bob"]
            let result = groupAnagrams(input)

            let expectedGroups: Set<Set<String>> = [
                ["bob", "obb", "bob"]
            ]

            let resultSet = Set(result.map { Set($0) })

            XCTAssertEqual(resultSet, expectedGroups)
        }
 

    
    
    
    
    
    
}


