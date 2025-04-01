import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sortedA = a.sorted()
    var sortedB = b.sorted()
    var answer = 0
    
    while !sortedA.isEmpty {
        let A = sortedA.last!
        let B = sortedB.last!
        
        if A < B { 
            answer += 1
            sortedA.removeLast()
            sortedB.removeLast()
        } else {
            sortedA.removeLast()
            sortedB.removeFirst()
        }
    }
    return answer
}