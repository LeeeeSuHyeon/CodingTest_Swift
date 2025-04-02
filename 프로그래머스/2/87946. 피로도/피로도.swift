import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    var currentK = k
    let count = dungeons.count
    var sortedDungeons = dungeons.sorted { $0[0] > $1[0] }
    var visited = Array(repeating: false, count: count + 1)

    func dfs(_ index: Int, _ value: Int) {
        answer = max(answer, value)
        if currentK < 0 { return }
        
        for i in 0..<count {
            if sortedDungeons[i][0] <= currentK && !visited[i] {
                currentK -= sortedDungeons[i][1]
                visited[i] = true
                dfs(index + 1, value + 1)
                currentK += sortedDungeons[i][1]
                visited[i] = false
            }
        }
    }

    dfs(0, 0)
    return answer
}