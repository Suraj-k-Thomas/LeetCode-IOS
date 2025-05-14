//
//  GroupAnagramsTest.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 13/05/25.
//

import Testing
import XCTest

class GroupAnagramsTest : XCTestCase {

    func test_ChaeckgroupAnagrams_returnsEmptyArray () {
        
      let Input =  ["eat", "tea", "tan", "ate", "nat", "bat"]
        let output = ChaeckgroupAnagrams(Input)
     
        let setinput = Set(Set(output.map({ Set($0)})))
        let setoutput : Set<Set<String>> = [
            Set(["eat","tea","ate"]),
        Set(["tan","nat"]),
        Set(["bat"])]
        
        print("setinput = \(setinput) , setoutput = \(setoutput)")
//        let  OutputResult = [["eat","tea","ate"],["tan","nat"],["bat"]]
        XCTAssertEqual(setinput, setoutput)

    }
    
    
    func ChaeckgroupAnagrams(_ strs: [String]) -> [[String]] {
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


