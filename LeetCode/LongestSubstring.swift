//
//  LongestSubstring.swift
//  
//
//  Created by Suraj  Thomas on 18/04/25.
//

import Foundation

/*
 Problem Statement
 Given a string s, find the length of the longest substring without repeating characters.
 
 Example:
 Input: "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 
 */

/*
 solution 1
 Iterate over the string
 Keep building a substring (or window) without duplicates
 Track the max length seen so far
 If a character is repeated, adjust the substring
 
 var maxlength
 var substring = ""
 for char s in string
 if substring contains s
 get index , remove substring till index
 
 add s to substring
 find maxlength of substring
 return max length
 
 */
