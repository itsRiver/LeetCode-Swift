import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var maxLength = 0, startIndex = 0
    var dict = [Character: Int]()
    for (i, char) in s.enumerated() {
        if let lastIndex = dict[char] {
            startIndex = max(lastIndex, startIndex)
        }
        dict[char] = i + 1
        maxLength = max(maxLength, i + 1 - startIndex)
    }
    return maxLength
}

let s = "abcabcbb"
lengthOfLongestSubstring(s)
