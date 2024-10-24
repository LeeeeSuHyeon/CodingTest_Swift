struct Node : Comparable {
    static func < (lhs: Node, rhs: Node) -> Bool {
        return lhs.cost < rhs.cost
    }
    
    let node : Int
    let cost : Int
    
    init(node: Int, cost: Int) {
        self.node = node
        self.cost = cost
    }
}

struct PriorityQueue <T : Comparable> {
    var heap = [T]()
    
    mutating func push(element : T) {
        heap.append(element)
        heapifyUp(index: heap.count - 1)
    }
    
    private mutating func heapifyUp(index : Int) {
        var childIndex = index
        let child = heap[childIndex]
        var parentIndex = (childIndex - 1) / 2
        
        while childIndex > 0 && heap[parentIndex] > child {
            heap[childIndex] = heap[parentIndex]
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
        heap[childIndex] = child
    }
    
    mutating func pop() -> T? {
        guard !heap.isEmpty else {return nil}
        if heap.count == 1 {
            return heap.removeFirst()
        }
        else {
            let value = heap.first
            heap[0] = heap.removeLast()
            heapifyDown(index: 0)
            return value
        }
    }
    
    private mutating func heapifyDown(index : Int) {
        var parentIndex = index
        let element = heap[parentIndex]
        let count = heap.count
        
        while true {
            let leftChildIndex = parentIndex * 2 + 1
            let rightChildIndex = parentIndex * 2 + 2
            var candidateIndex = parentIndex
            
            if leftChildIndex < count && heap[leftChildIndex] < heap[candidateIndex] {
                candidateIndex = leftChildIndex
            }
            if rightChildIndex < count && heap[rightChildIndex] < heap[candidateIndex] {
                candidateIndex = rightChildIndex
            }
            if candidateIndex == parentIndex {
                break
            }
            
            heap[parentIndex] = heap[candidateIndex]
            parentIndex = candidateIndex
        }
        heap[parentIndex] = element
    }
}


let N = Int(readLine()!)!
let M = Int(readLine()!)!
var edges = [Int : [Node]]()
for i in 1...N {
    edges[i] = []
}

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (start, end, cost) = (input[0], input[1], input[2])
    edges[start]?.append(Node(node: end, cost: cost))
}

let startEnd = readLine()!.split(separator: " ").map{Int($0)!}
let (start, end) = (startEnd[0], startEnd[1])

var priorityQueue = PriorityQueue<Node>()
var distance = [Int](repeating: Int.max, count: N + 1)
distance[start] = 0

priorityQueue.push(element: Node(node: start, cost: 0))

while let current = priorityQueue.pop() {
    let (node, cost) = (current.node, current.cost)

    if cost > distance[node] { continue }
    if let edge = edges[node] {
        for next in edge {
            let (nextNode, nextCost) = (next.node, next.cost)
            let newCost = cost + nextCost
            if newCost < distance[nextNode] {
                distance[nextNode] = newCost
                priorityQueue.push(element: Node(node: nextNode, cost: newCost))
            }
        }
    }
}


print(distance[end])
