let N = Int(readLine()!)!
let M = Int(readLine()!)!

var parent = Array(0...N)

for i in 1...N {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for (index, _ ) in input.enumerated().filter{$0.1 == 1} {
        union(&parent, i, index + 1)
    }
}
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let root = findParent(&parent, input[0])
print(input.allSatisfy { findParent(&parent, $0) == root } ? "YES" : "NO")


func findParent(_ parent: inout [Int], _ node: Int) -> Int {
    if parent[node] != node {
        parent[node] = findParent(&parent, parent[node])
    }
    return parent[node]
}

func union(_ parent: inout [Int], _ a: Int, _ b: Int) {
    let rootA = findParent(&parent, a)
    let rootB = findParent(&parent, b)
    
    if rootA < rootB {
        parent[rootB] = rootA
    } else {
        parent[rootA] = rootB
    }
}
