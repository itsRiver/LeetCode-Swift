/**
 * Question Link: https://leetcode.com/problems/valid-parentheses/
 */

import Foundation

class Stack {
    private var stack: [Character] = []
    
    var isEmpty: Bool {
        return stack.isEmpty
    }

    var size: Int {
        return stack.count
    }

    var peek: Character? {
        return stack.last
    }

    func push(_ value: Character) {
        stack.append(value)
    }

    func pop() -> Character? {
        return stack.popLast()
    }
}

func isValid(_ s: String) -> Bool {
    let stack = Stack()
    for char in s {
        if char == "(" || char == "{" || char == "[" {
            stack.push(char)
        } else if char == ")" {
            if stack.peek == "(" {
                stack.pop()
            } else {
                return false
            }
        } else if char == "}" {
            if stack.peek == "{" {
                stack.pop()
            } else {
                return false
            }
        } else if char == "]" {
            if stack.peek == "[" {
                stack.pop()
            } else {
                return false
            }
        }
    }
    if stack.isEmpty {
        return true
    } else {
        return false
    }
}

let s = "{[]}"
isValid(s)
