import Foundation

func solution(_ elements:[Int]) -> Int {
    var roundElements = elements + elements
    let count = elements.count
    var answer = [Int]()
    
    for i in 0..<count {
        var sum = Array(repeating: 0, count: roundElements.count)
        for j in i..<i+count {
            sum[j] = j == 0 ? roundElements[j] : sum[j - 1] + roundElements[j]
        }
        answer += sum.filter { $0 != 0 }
    }
    
    return Set(answer).count
}