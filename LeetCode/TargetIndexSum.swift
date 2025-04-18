//
//  TargetIndexSum.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 18/04/25.
//

import Foundation
/*
 Problem Statement
 
 Given an array of integers nums and an integer target, return the indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 Example
 
 Input: nums = [2, 7, 11, 15], target = 9
 Output: [0, 1] // Because nums[0] + nums[1] == 9
 
 */


/*
 Solution
 iterate the array nums , (value , index)
 create dictionary to add seen elements and index
 calculate complement. target - value
 check is seen dictonary contains complement
 {
 return index, complementIndex
 }
 add seen item to seen dictinary
 seen[num] = value
 */



func FindIndexOfTargrtSum (nums:[Int] ,target :Int )-> [Int]{
    
    var seen:[Int:Int] = [:]
    print("nums = \(nums)")
    
    for(index,num) in nums.enumerated(){
        
        let complement = target - num
        
        if let complementIndex = seen[complement]{
            
            return [complementIndex, index]
        }
        seen[num] = index
        print(seen)
    }
    return []
}
