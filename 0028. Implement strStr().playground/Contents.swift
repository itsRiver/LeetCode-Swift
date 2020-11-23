/**
 * Question Link: https://leetcode.com/problems/implement-strstr/
 */

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle == "" {
        return 0
    } else {
        let hChars = Array(haystack), nChars = Array(needle)
        let hLen = hChars.count, nLen = nChars.count
        if hLen < nLen {
            return -1
        } else {
            for i in 0...hLen-nLen {
                if hChars[i] == nChars[0] {
                    for j in 0..<nLen {
                        if hChars[i+j] != nChars[j] {
                            break
                        }
                        if j == nLen - 1 {
                            return i
                        }
                    }
                }
            }
        }
    }
    return -1
}

let haystack = "hello", needle = "ll"
strStr(haystack, needle)

//func strStr(_ haystack: String, _ needle: String) -> Int {
//    if needle == "" {
//        return 0
//    } else if !haystack.contains(needle) {
//        return -1
//    } else {
//        let range = haystack.range(of: needle)
//        return haystack.distance(from: haystack.startIndex, to: range!.lowerBound)
//    }
//}
