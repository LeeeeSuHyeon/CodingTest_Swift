import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var graph = [Int: [Int]]()
    var visited: [Bool] = []
    var answer = Int.max
    
    for wire in wires {
        graph[wire[0], default: []].append(wire[1])
        graph[wire[1], default: []].append(wire[0])
    }
           
    func bfs(_ start: Int) -> Int {
        var queue = [start]
        var count = 0
        visited[start] = true
        
        while !queue.isEmpty {
            let now = queue.removeFirst()
            count += 1
            
            for i in graph[now]! where !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
        
        return count
    }
    
    for i in 1...n {
        visited = Array(repeating: false, count: n + 1)
        visited[i] = true // 연결 끊기
        
        let count = bfs(1)
        answer = min(answer, abs(count  - (n - count)))
    }
    
    return answer
}

/*  1130

*/