/**
 * Question Link: https://leetcode.com/problems/roman-to-integer/
 */

import Foundation

func romanToInt(_ s: String) -> Int {
    
    let dict = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
    ]
    let chars = Array(s.reversed())
    var res = 0
    
    for i in 0..<chars.count {
        guard let current = dict[String(chars[i])] else {
            return res
        }
        if i > 0 && current < dict[String(chars[i - 1])]! {
            res -= current
        } else {
            res += current
        }
    }
    
    return res
}

let s = "MCMXCIV"
romanToInt(s)

//func romanToInt(_ s: String) -> Int {
//    var result = 0
//    var lastSymbol = ""
//    for symbol in s {
//        switch symbol {
//        case let x where "\(lastSymbol)\(String(x))" == "IV":
//            result += 4 - 1
//        case let x where "\(lastSymbol)\(String(x))" == "IX":
//            result += 9 - 1
//        case let x where "\(lastSymbol)\(String(x))" == "XL":
//            result += 40 - 10
//        case let x where "\(lastSymbol)\(String(x))" == "XC":
//            result += 90 - 10
//        case let x where "\(lastSymbol)\(String(x))" == "CD":
//            result += 400 - 100
//        case let x where "\(lastSymbol)\(String(x))" == "CM":
//            result += 900 - 100
//        case "I":
//            result += 1
//        case "V":
//            result += 5
//        case "X":
//            result += 10
//        case "L":
//            result += 50
//        case "C":
//            result += 100
//        case "D":
//            result += 500
//        case "M":
//            result += 1000
//        default:
//            break
//        }
//        lastSymbol = String(symbol)
//    }
//    return result
//}
