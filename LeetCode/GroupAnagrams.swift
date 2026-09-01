//
//  GroupAnagrams.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 14/05/25.
//


/*
 
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.
 
 Input: strs = ["eat","tea","tan","ate","nat","bat"]

 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

 Explanation:

 There is no string in strs that can be rearranged to form "bat".
 The strings "nat" and "tan" are anagrams as they can be rearranged to form each other.
 The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to form each other.
 Example 2:

 Input: strs = [""]

 Output: [[""]]

 Example 3:

 Input: strs = ["a"]

 Output: [["a"]]

  

 Constraints:

 1 <= strs.length <= 104
 0 <= strs[i].length <= 100
 strs[i] consists of lowercase English letters.
 */
import Foundation

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
