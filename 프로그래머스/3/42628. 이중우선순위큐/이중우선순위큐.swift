import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    
    for operation in operations {
        let op = operation.split(separator: " ")
        if op[0] == "I" {
            queue.append(Int(op[1])!)
        }
        
        if op[0] == "D" {
            if queue.isEmpty { continue }
            queue.sort()
            if op[1] == "-1" { queue.removeFirst() }
            if op[1] == "1" { queue.removeLast() }
        }
    }
    
    queue.sort()
    return [queue.last ?? 0, queue.first ?? 0]
}


