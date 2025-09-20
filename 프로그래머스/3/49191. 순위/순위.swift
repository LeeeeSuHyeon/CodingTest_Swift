import Foundation

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var wins = Array(repeating: [Int](), count: n + 1)  // index가 배열의 원소들을 이김
    var loses = Array(repeating: [Int](), count: n + 1)  // index가 배열의 원소들한테 짐
    var answer = 0
    
    for result in results {
        let (winner, losser) = (result[0], result[1])
        wins[winner].append(losser)
        loses[losser].append(winner)
    }
    
    for i in 1...n {
        var winCount = 0
        var loseCount = 0

        var visited = Array(repeating: false, count: n + 1)
        var queue = [i]
        visited[i] = true
        
        while !queue.isEmpty {
            let next = queue.removeLast()
            for win in wins[next] where !visited[win] {
                queue.append(win)
                visited[win] = true
                winCount += 1
            }
        }
        
        visited = Array(repeating: false, count: n + 1)
        queue = [i]
        visited[i] = true
        while !queue.isEmpty {
            let next = queue.removeLast()
            for lose in loses[next] where !visited[lose] {
                queue.append(lose)
                visited[lose] = true
                loseCount += 1
            }
        }
        
        if winCount + loseCount == n - 1 { answer += 1 }
    }
    
    return answer
}

/* 1040

1 > 2 > 5
3 > 2
4 > 3 > 2 > 5

*/
