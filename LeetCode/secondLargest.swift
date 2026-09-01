//
//  secondLargest.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 01/09/26.
//

import Foundation
/*
Given an array of positive integers arr[] of size n, the task is to find second largest distinct element in the array.

Note: If the second largest element does not exist, return -1.

Examples:

Input: arr[] = [12, 35, 1, 10, 34, 1]
Output: 34
Explanation: The largest element of the array is 35 and the second largest element is 34.

Input: arr[] = [10, 5, 10]
Output: 5
Explanation: The largest element of the array is 10 and the second largest element is 5.

Input: arr[] = [10, 10, 10]
Output: -1
Explanation: The largest element of the array is 10 there is no second largest element.
*/


func secondLargest(arr _arr:[Int])->Int
{
    guard  _arr.count >= 2 else{
        
        print("not enough values")
        return -1
    }
    
    var largest = Int.min
    var secondLargest = Int.min
    
    for num in _arr {
        
        if num > largest {
            secondLargest = largest
            largest = num
        }else if num > secondLargest && num != largest{
            secondLargest = num
        }
        
    }
    return  secondLargest == Int.min ? -1 : secondLargest
}

