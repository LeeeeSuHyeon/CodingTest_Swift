let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (N, M, R) = (input[0], input[1], input[2])
var array = [[Int]](repeating: [Int](), count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    array[input[0]].append(input[1])
    array[input[1]].append(input[0])
}

array = array.map{$0.sorted(by: >)}

var visited = Array(repeating: false, count: N + 1)
var answer = Array(repeating: 0, count: N + 1)
var depth = 1

func dfs(_ value: Int) {
    answer[value] = depth
    visited[value] = true
    
    for next in array[value] {
        if visited[next] { continue }
        depth += 1
        dfs(next)
    }
}

dfs(R)
answer[1...].forEach{ print($0) }
