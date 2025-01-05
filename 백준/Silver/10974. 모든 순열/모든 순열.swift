let N = Int(readLine()!)!
var visited = Array(repeating: false, count: N + 1)


func recur(choose: [String]) {
    if choose.count == N {
        print(choose.joined(separator: " "))
        return
    }
    
    for i in 1...N {
        if visited[i] { continue }
        visited[i] = true
        recur(choose: choose + ["\(i)"])
        visited[i] = false
    }
}
recur(choose: [])
