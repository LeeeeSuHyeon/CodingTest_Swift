let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var graph = Array(repeating: [Int](), count: N + 1)
var visited = Array(repeating: false, count: N + 1)
var arr = graph[1]
var count = 0

for _ in 0..<M {
    let uv = readLine()!.split(separator: " ").map{Int($0)!}
    let (u, v) = (uv[0], uv[1])
    graph[u].append(v)
    graph[v].append(u)
}

func dfs(node : Int) {
    for next in graph[node] {
        if !visited[next] {
            visited[next] = true
            dfs(node: next)
        }
    }
}

for i in 1...N{
    if !visited[i] {
        count += 1
        visited[i] = true
        dfs(node: i)
    }
}

print(count)
