import Foundation

//func maxArea(_ height: [Int]) -> Int {
//    var maxCapacity = 0
//    for (index1, h1) in height.enumerated() {
//        var lastSideLength = 0
//        for (index2, h2) in height.enumerated().reversed() {
//            if index2 > index1 {
//                if h2 > lastSideLength {
//                    let currentCapacity = min(h1, h2) * (index2  - index1)
//                    if currentCapacity > maxCapacity {
//                        maxCapacity = currentCapacity
//                    }
//                    lastSideLength = h2
//                }
//            }
//        }
//    }
//    return maxCapacity
//}

func maxArea(_ height: [Int]) -> Int {
    var maxCapacity = 0, left = 0, right = height.count - 1
    while left < right {
        let minHeight = min(height[left], height[right])
        maxCapacity = max(maxCapacity, minHeight * (right - left))
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    return maxCapacity
}

var height = [4,3,2,1,4]
maxArea(height)
