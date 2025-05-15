let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (V, E) = (input[0], input[1])
var lines = [[Int]]()
var parent = Array(0...V)
var weight = 0
var length = 0

for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (A, B, C) = (input[0], input[1], input[2])
    lines.append([A, B, C])
}

lines.sort { $0[2] < $1[2] }

for line in lines {
    if findParent(&parent, line[0]) != findParent(&parent, line[1]) {
        union(&parent, line[0], line[1])
        length += 1
        weight += line[2]
    }
    
    if length == V - 1 { break }
}

print(weight)

func findParent(_ parent: inout [Int], _ node: Int) -> Int {
    if parent[node] != node {
        parent[node] = findParent(&parent, parent[node])
    }
    return parent[node]
}

func union(_ parent: inout [Int], _ a: Int, _ b: Int) {
    let rootA = parent[a]
    let rootB = parent[b]
    
    if rootA < rootB {
        parent[rootB] = rootA
    } else {
        parent[rootA] = rootB
    }
}