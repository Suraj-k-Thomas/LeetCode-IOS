//
//  GroupAnagrams.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 14/05/25.
//

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
