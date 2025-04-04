import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    let count = dungeons.count
    var answer = 0
    var visited = Array(repeating: false, count: count + 1)

    func dfs(_ k: Int, _ value: Int) {
        answer = max(answer, value) // if index == count {} 조건이 있으면 2번 인덱스 탐색 후 1번 인덱스 탐색이 불가능함 
        if k < 0 { return }
        
        for i in 0..<count {
            if dungeons[i][0] <= k && !visited[i] {
                visited[i] = true
                dfs(k - dungeons[i][1], value + 1)
                visited[i] = false
            }
        }
    }

    dfs(k, 0)
    return answer
}