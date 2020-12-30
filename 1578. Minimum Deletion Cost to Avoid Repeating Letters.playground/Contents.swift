/**
 * Question Link: https://leetcode.com/problems/minimum-deletion-cost-to-avoid-repeating-letters/
 */

import Foundation

func minCost(_ s: String, _ cost: [Int]) -> Int {
    let chars = Array(s)
    var repeatedLastTime = false
    var minCost = 0, tempMax = 0
    for i in 1..<chars.count {
        if chars[i] == chars[i-1] {
            if repeatedLastTime {
                minCost += cost[i]
                tempMax = max(tempMax, cost[i])
            } else {
                minCost += cost[i-1] + cost[i]
                tempMax = max(cost[i-1], cost[i])
            }
            repeatedLastTime = true
        } else {
            minCost -= tempMax
            tempMax = 0
            repeatedLastTime = false
        }
        if i == chars.count-1 {
            minCost -= tempMax
        }
    }
    return minCost
}

let s = "bbbaaa", cost = [4,9,3,8,8,9]
minCost(s, cost)
