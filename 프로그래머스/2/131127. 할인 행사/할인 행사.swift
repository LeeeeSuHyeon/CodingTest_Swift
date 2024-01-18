import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var count = 0
    let total = 10
    var wants = [String]()
    for i in 0..<number.count{
        for j in 0..<number[i] {
            wants.append(want[i])
        }
    }
    for i in 9...discount.count - 1 {
        var dis = discount[(i - 9)...i]
        for j in 0..<wants.count {
            guard let index = dis.firstIndex(of: wants[j]) else {
                break
            }
            dis.remove(at : index)
        }
        count += dis.isEmpty ? 1 : 0
    }
    return count
}