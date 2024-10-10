let n = Int(readLine()!)!
let m = Int(readLine()!)!
var arr = [[Int]](repeating: [Int](), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    arr[input[0]].append(input[1])
    arr[input[1]].append(input[0])
}

var visited = [Int](repeating: 0, count: n + 1)

func recur(_ node : Int) {
    visited[node] = 1
    for i in arr[node] {
        if visited[i] == 1 { continue }
        recur(i)
    }
}

recur(1)
print(visited.reduce(0, +) - 1)
