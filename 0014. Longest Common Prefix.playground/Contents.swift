/**
 * Question Link: https://leetcode.com/problems/longest-common-prefix/
 */

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count < 1 {
        return ""
    }
    var prefix = strs[0]
    for i in 1..<strs.count {
        while !strs[i].hasPrefix(prefix) {
            if prefix.count < 1 {
                return ""
            }
            prefix.removeLast()
        }
    }
    return prefix
}

let strs = ["flower","flow","flight"]
longestCommonPrefix(strs)
