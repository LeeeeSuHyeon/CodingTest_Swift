struct Node : Comparable {
    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost
    }
    
    let node : Int
    let cost : Int
    
    init(node: Int, cost: Int) {
        self.node = node
        self.cost = cost
    }
}

struct PriorityQueue<T : Comparable> {
    var heap : [T] = []
    
    mutating func push(_ element : T) {
        heap.append(element)
        heapifyUp(index : heap.count - 1)
    }
    
    mutating func heapifyUp(index : Int) {
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
    
    mutating func heapifyDown(index : Int) {
        var parentIndex = index
        let count = heap.count
        let element = heap[parentIndex]
        
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

let VE = readLine()!.split(separator: " ").map{Int($0)!}
let (V, E) = (VE[0], VE[1])
let start = Int(readLine()!)!
var distance = [Int](repeating: Int.max, count: V + 1)
//var visited = [Bool](repeating: false, count: V + 1)
var edges = [Int : [Node]]()
var priorityQueue = PriorityQueue<Node>()
for i in 1...V {
    edges[i] = []
}

for _ in 0..<E {
    let edge = readLine()!.split(separator: " ").map{Int($0)!}
    let (U, V, W) = (edge[0], edge[1], edge[2])
    edges[U]?.append(Node(node : V, cost : W))
}

distance[start] = 0
priorityQueue.push(Node(node: start, cost: 0))

while let currnet = priorityQueue.pop() {
    let (node, cost) = (currnet.node, currnet.cost)
//    guard !visited[node] else {continue}
//    visited[node] = true
    
    if cost > distance[node] { continue }
    if let edge = edges[node] {
        for next in edge {
            let (nextNode, nextCost) = (next.node, next.cost)
//            guard !visited[nextNode] else {continue}
            let newCost = cost + nextCost
            if newCost < distance[nextNode] {
                distance[nextNode] = newCost
                priorityQueue.push(Node(node: nextNode, cost: newCost))
            }
        }
    }
}

for i in 1...V {
    print(distance[i] == Int.max ? "INF" : distance[i])
}
