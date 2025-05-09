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
 Input: "bcaabcbb"
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


/**
 
 solution 2 - using sets and moving windows
 
 create set of characters
 
 2 pointers - left ,right = 0
 
 while right < s.end{
 let char = s.right
 if ! charset . contains char{
 
 charset.add string.right// add char to charset
 maxlength = max(chharset, distancefromlefttoright,1)
 right = s.index after(right)// increment right
 
 }else{
 
 charset.removefrom (s[left]) // remove from string.leftIndex
 left = s.index after left // increment left
 
 }}

 */



func lengthOfLongestSubstringUsingSet(_ s: String) -> Int {
    var maxLength = 0
    var rightIndex = s.startIndex
    var leftIndex = rightIndex
    
    var Charset: Set<Character> = []
    while rightIndex < s.endIndex {
        let char = s[rightIndex]
        
        if !Charset.contains(char){
            Charset.insert(char)
            maxLength = max(maxLength, s.distance(from: leftIndex, to: rightIndex) + 1)
            rightIndex = s.index(after: rightIndex)
        }else {
            
            Charset.remove(s[leftIndex])
            leftIndex = s.index(after: leftIndex)
        }
    }
    
    return maxLength
    
}
