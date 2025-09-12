import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: n) // 방문 표시
    var count = 0 // 네트워크 개수
    var queue = [0] // 연결되어 있는 컴퓨터의 인덱스 저장 (첫 번째 컴퓨터부터 방문)
    
    while true { // 모든 컴퓨터 방문할 때까지 반복
        if let computer = queue.popLast() { // 큐에서 방문할 컴퓨터 제거
            visited[computer] = true // 방문 처리
            for (i, connect) in computers[computer].enumerated() { // 방문한 컴퓨터와 연결된 컴퓨터 탐색
			        // 자신, 방문했던 컴퓨터, 연결되지 않은 컴퓨터 제외 
                if i == computer || visited[i] || connect == 0 { continue }
                queue.append(i) // 큐에 추가 
            }
        } else { // 비어있으면
            count += 1 // 네트워크 1 증가
            if let index = visited.firstIndex(of: false){ // 아직 방문하지 않은 컴퓨터 찾기
                queue.append(index) // 아직 방문하지 않은 컴퓨터 큐에 추가
            } else {
                break // 모두 방문했으면 break
            }
        }
    }
    
    return count
}