import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
//     var sum = 0
//     for i in 0..<absolutes.count{
//         sum += signs[i] ? absolutes[i] : -absolutes[i]
//     }
    
//     return sum
    
    return (0..<absolutes.count).map{signs[$0] ? absolutes[$0] : -absolutes[$0]}.reduce(0, +)
    
}