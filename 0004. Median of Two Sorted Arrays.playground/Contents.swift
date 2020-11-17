/**
 * Question Link: https://leetcode.com/problems/median-of-two-sorted-arrays/
 */

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let length1 = nums1.count, length2 = nums2.count
    let totalLength = length1 + length2
    if totalLength % 2 == 1 {
        return getTheKthSmallestNum(nums1, 0, nums2, 0, totalLength / 2 + 1)
    } else {
        return (getTheKthSmallestNum(nums1, 0, nums2, 0, (totalLength / 2)) + getTheKthSmallestNum(nums1, 0, nums2, 0, (totalLength / 2 + 1))) / 2.0
    }
    
}

func getTheKthSmallestNum(_ nums1: [Int], _ i: Int, _ nums2: [Int], _ j: Int, _ k: Int) -> Double {
    let length1 = nums1.count, length2 = nums2.count
    if i >= length1 {
        return Double(nums2[j + k - 1])
    }
    if j >= length2 {
        return Double(nums1[i + k - 1])
    }
    if k == 1 {
        return Double(min(nums1[i], nums2[j]))
    }
    let mid1 = (i + k / 2 - 1) < length1 ? nums1[i + k / 2 - 1] : Int.max
    let mid2 = (j + k / 2 - 1) < length2 ? nums2[j + k / 2 - 1] : Int.max
    if mid1 < mid2 {
        return getTheKthSmallestNum(nums1, i + k / 2, nums2, j, k - k / 2)
    } else {
        return getTheKthSmallestNum(nums1, i, nums2, j + k / 2, k - k / 2)
    }
}

let nums1 = [1,2], nums2 = [3,4]
findMedianSortedArrays(nums1, nums2)
