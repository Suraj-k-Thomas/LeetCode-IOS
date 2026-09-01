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
 Input: "acbabcbab"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 
 */



func findlongestsubstring (_ s : String) -> String {
    
    guard !s.isEmpty else{
        return s
    }
    var left = s.startIndex
    var right = left
    var beststart = left
    var bestcount = 0
    var charset = Set<Character>()
    
    while right < s.endIndex {
        
        var char = s[right]
        
        if !charset.contains(char){
            charset.insert(char)
            right = s.index(after: right)
            var count = s.distance(from: left, to: right)
            if  count > bestcount {
                bestcount = count
                beststart = left
            }
        }else{
            charset.remove(char)
            left = s.index(after: left)
            
        }
        
    }
    
    let bestend = s.index(beststart, offsetBy: bestcount)
    let longest = String(s[beststart..<bestend])
    
    
    return longest
}

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
            print(Charset , maxLength)
            rightIndex = s.index(after: rightIndex)
        }else {
            Charset.remove(s[leftIndex])
            leftIndex = s.index(after: leftIndex)
        }
    }
    print("charset : \(Charset)")
    return maxLength
    
}

/*
 
// */
//func lengthOfLongestSubstringUsingSet(_ s: String) -> Int {
//    
//    var maxlength = 0
//    var currentlength = 0
//    var leftindex = s.startIndex
//    var rightindex = leftindex
//    var Characters : Set<Character> = []
//    
//    while rightindex < s.endIndex {
//        
//        let char = s[rightindex]
//        
//        if !Characters.contains(char){
//            Characters.insert(char)
//            
//            
//            maxlength = max(maxlength, Characters.count)
//           // print(maxlength,char)
//            rightindex = s.index(after: rightindex)
//        }else {
//            //print(maxlength,currentlength)
//            Characters.remove(s[leftindex])
//            leftindex = s.index(after: leftindex)
//        }
//        
//    }
//    
//   // print(Characters)
//
//    return maxlength
//}


func longestSubstringWithoutRepeating(_ s: String) -> String {
    var window: Set<Character> = []
    var left = s.startIndex
    var right = left

    var currLen = 0
    var bestLen = 0
    var bestStart = s.startIndex

    while right < s.endIndex {
        let ch = s[right]
        if !window.contains(ch) {
            window.insert(ch)
            currLen += 1

            if currLen > bestLen {
                bestLen = currLen
                bestStart = left
            }
            right = s.index(after: right)          // expand
        } else {
            window.remove(s[left])                  // shrink by 1
            left = s.index(after: left)
            currLen -= 1
        }
    }

    let bestEnd = s.index(bestStart, offsetBy: bestLen)
    return String(s[bestStart..<bestEnd])
}


func longestSubstring(_ s: String) -> String {
    
    /**
     s = "abcdabcdab"
     */
    
    var leftindex = s.startIndex
    var rightindex = leftindex
    var beststart = leftindex
    var bestend = s.endIndex
    var bestcount = 0
    var currentcount = 0
    var charset = Set<Character>()
    
    while rightindex < s.endIndex {
        
        let char = s[rightindex]
        if !charset.contains(char){
            charset.insert(char)
            currentcount += 1
            if currentcount > bestcount{
                bestcount = currentcount
                beststart = leftindex
            }
            print("char is \(char)\n currentcount is \(currentcount)\n beststart is \(beststart)\n bestcount is \(bestcount)")
            rightindex = s.index(after: rightindex)
            
            
        }else{
            charset.remove(s[leftindex])
            currentcount -= 1
            leftindex = s.index(after: leftindex)
        }
        
    }
    
    bestend = s.index(beststart, offsetBy: bestcount)
    let longeststring = String(s[beststart..<bestend])
    
    
    return longeststring
}
