import Foundation

struct Heap<T> {
    var nodes: [T] = []
    let comparer: (T, T) -> Bool
    
    init(comparer: @escaping (T, T) -> Bool) {
        self.comparer = comparer
    }
    
    var isEmpty: Bool { nodes.isEmpty }
    
    mutating func insert(_ value: T) {
        nodes.append(value)
        var index = nodes.count - 1
        while index > 0 {
            let parent = (index - 1) / 2
            if comparer(nodes[index], nodes[parent]) {
                nodes.swapAt(index, parent)
                index = parent
            } else {
                break
            }
        }
    }
    
    mutating func remove() -> T? {
        guard !nodes.isEmpty else { return nil }
        if nodes.count == 1 {
            return nodes.removeFirst()
        }
        let value = nodes.first
        nodes[0] = nodes.removeLast()
        
        var index = 0
        while true {
            let left = index * 2 + 1
            let right = index * 2 + 2
            var candidate = index
            
            if left < nodes.count, comparer(nodes[left], nodes[candidate]) {
                candidate = left
            }
            if right < nodes.count, comparer(nodes[right], nodes[candidate]) {
                candidate = right
            }
            if candidate == index { break }
            nodes.swapAt(index, candidate)
            index = candidate
        }
        return value
    }
}

func solution(_ operations:[String]) -> [Int] {
    var maxHeap = Heap<(Int, Int)>(comparer: { $0.0 > $1.0 }) // (값, id)
    var minHeap = Heap<(Int, Int)>(comparer: { $0.0 < $1.0 })
    var visited = [Bool](repeating: false, count: operations.count) // 유효성 체크
    
    for (i, op) in operations.enumerated() {
        let parts = op.split(separator: " ")
        let command = parts[0]
        let number = Int(parts[1])!
        
        if command == "I" {
            maxHeap.insert((number, i))
            minHeap.insert((number, i))
            visited[i] = true
        } else if command == "D" {
            if number == 1 { // 최댓값 삭제
                while !maxHeap.isEmpty {
                    let (val, idx) = maxHeap.remove()!
                    if visited[idx] {
                        visited[idx] = false
                        break
                    }
                }
            } else { // 최솟값 삭제
                while !minHeap.isEmpty {
                    let (val, idx) = minHeap.remove()!
                    if visited[idx] {
                        visited[idx] = false
                        break
                    }
                }
            }
        }
    }
    
    var maxValue: Int?
    while !maxHeap.isEmpty {
        let (val, idx) = maxHeap.remove()!
        if visited[idx] {
            maxValue = val
            break
        }
    }
    
    var minValue: Int?
    while !minHeap.isEmpty {
        let (val, idx) = minHeap.remove()!
        if visited[idx] {
            minValue = val
            break
        }
    }
    
    if let maxV = maxValue, let minV = minValue {
        return [maxV, minV]
    } else {
        return [0, 0]
    }
}