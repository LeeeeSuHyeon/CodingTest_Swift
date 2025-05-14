let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])

var parent = Array(0...n)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map {Int(String($0))!}
    let (operation, a, b) = (input[0], input[1], input[2])
    
    if operation == 0 { // Union
        union(&parent, a, b)
    } else {
        let isSameParent = findParent(&parent, a) == findParent(&parent, b)
        print(isSameParent ? "YES" : "NO")
    }
}

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