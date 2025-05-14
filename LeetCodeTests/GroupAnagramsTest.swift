//
//  GroupAnagramsTest.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 13/05/25.
//

import Testing
import XCTest

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
            let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
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
 

    
    
    
    
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()

        for str in strs {
            let key = String(str.sorted())  // Sort characters to use as key
            if var existingArray = dict[key] {
                existingArray.append(str)
                dict[key] = existingArray
            } else {
                dict[key] = [str]
            }
        }

        // Optional: Print the dictionary for debugging
        for (key, value) in dict {
            print("\(key): \(value)")
        }

        return Array(dict.values)
    }
    
}


