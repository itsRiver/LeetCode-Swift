import Foundation

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    for (index1, num1) in nums.enumerated() {
//        for (index2, num2) in nums.enumerated() {
//            if index2 > index1 {
//                if num2 == (target-num1) {
//                    return [index1, index2]
//                }
//            }
//        }
//    }
//    fatalError("No two sum solution")
//}

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            return [lastIndex, i]
        }
        dict[num] = i
    }
    fatalError("No two sum solution")
}

twoSum([2,7,11,15], 9)
