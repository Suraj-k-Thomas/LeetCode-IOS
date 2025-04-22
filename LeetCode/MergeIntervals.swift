//
//  MergeIntervals.swift
//  LeetCode
//
//  Created by Suraj  Thomas on 22/04/25.
//

import Foundation
/**
 You’re given an array of intervals, where each interval is a pair: [start, end].
 Merge all overlapping intervals.
 Example
 Input:  [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 [1,3] and [2,6] overlap → merge to [1,6]
 */

/**
 solution
 *sort the intervals
 *initialize a result array with the first interval.
 *for each remaining intervals  ,
  compare last[1] < [interval [0]
 if yes overlapp  add to result,
 else
 add to result
 */

func mergeIntervals(_ intervals:[[Int]])-> [[Int]] {
    
    guard  intervals.count > 1 else {
        return intervals
    }
  
    let sorted = intervals.sorted {$0[0] < $1[0]}
    print("print sorted: \(sorted)")
       var result: [[Int]] = [sorted[0]]

    
    for interval in sorted[1...] {
        
        let last = result.last!
        print("comparing \(last) \(interval)")
        if interval[0] <= last[1] {
            
       let merged = [last[0], max(last[1], interval[1])]
            print("\(result) , \(merged)")
            result[result.count-1] = merged

        }
        else{
            
            result.append(interval)
        }
    }
    
    return result
}
