let N = Int(readLine()!)!
var graph = [[Int]](repeating: [], count: N + 1)
var parent = [Int](repeating: 0, count: N + 1)
for _ in 0..<N - 1 {
    let line = readLine()!.split(separator: " ").map{Int($0)!}
    graph[line[0]].append(line[1])
    graph[line[1]].append(line[0])
}

func recur(node : Int, prev : Int) {
    parent[node] = prev
    for next in graph[node] {
        if next == prev { continue }
        recur(node: next, prev: node)
    }
}
recur(node: 1, prev: 0)

for i in 2...N {
    print(parent[i])
}
