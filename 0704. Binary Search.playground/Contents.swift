/**
 * Question Link: https://leetcode.com/problems/binary-search/
 */

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    var min = 0, max = nums.count - 1
    var mid: Int
    while min <= max {
//        mid = min + (max - min) / 2
        mid = min + ((max - min) >> 1)
        if target < nums[mid] {
            max = mid - 1
        } else if target > nums[mid] {
            min = mid + 1
        } else {
            return mid
        }
    }
    return -1
}

let nums = [-1,0,3,5,9,12], target = 9
search(nums, target)
