let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var graph = Array(repeating: [Int](), count: N + 1)
var visited = Array(repeating: false, count: N + 1)
var arr = [Int]()
var count = 0

for _ in 0..<M {
    let uv = readLine()!.split(separator: " ").map{Int($0)!}
    let (u, v) = (uv[0], uv[1])
    graph[u].append(v)
    graph[v].append(u)
}

func recur() {
    if arr.isEmpty {
        count += 1
        if visited.filter({$0 == false}).isEmpty {
            return
        } else {
            if let index = visited.firstIndex(of: false) {
                visited[index] = true
                arr += graph[index]
                recur()
            }
        }
    }
    
    if let next = arr.popLast() {
        visited[next] = true
        let nextArr = graph[next].filter({visited[$0] == false})
        arr += nextArr
        recur()
    }

}
visited[0] = true
visited[1] = true
arr += graph[1]
recur()
print(count)

