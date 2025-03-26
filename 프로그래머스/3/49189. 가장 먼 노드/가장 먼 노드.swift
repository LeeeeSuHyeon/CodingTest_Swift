import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = [[Int]](repeating: [Int](), count: n + 1) // 0번째 인덱스 제외하기 위해 n + 1개 생성
    var distance = Array(repeating: 0, count: n + 1)      // 1번 노드부터 떨어진 거리
    var visited = Array(repeating: false, count: n + 1)   // 방문 처리
    
    edge.forEach {
        graph[$0[0]].append($0[1])
        graph[$0[1]].append($0[0])
    }

    var queue = graph[1].map{(1, $0)} // 1번 노드와 연결된 노드 삽입 (이전 노드, 현재 노드) 튜플 형태
    visited[1] = true
    graph[1].forEach {visited[$0] = true}
    
    while !queue.isEmpty {
        let (prevNode, currentNode) = queue.removeFirst() 
        distance[currentNode] = distance[prevNode] + 1
        
        for next in graph[currentNode] {
            if visited[next] { continue }
            queue.append((currentNode, next))
            visited[next] = true
        }
    }
    let maxDistance = distance.max() ?? 0
    return distance.filter {maxDistance == $0}.count
}


/*
1. 양방향 그래프이므로 각 노드와 연결된 모든 노드를 2차원 배열 형태로 정의
ex) [[],[2, 3], [1, 4, 5] ... ] 
- 0번 노드는 없으니 비워둠 
- 1번 노드와 연결된 노드는 2, 3
- 2번 노드와 연결된 노드는 1, 4, 5 (양방항 그래프이므로 1번 노드 포함)

2. 1번 노드와 떨어진 거리를 나타내는 배열 생성 (distance)
3. 큐를 생성하여 1번 노드와 연결된 노드를 큐에 넣어줌
    - 큐에서 꺼내면서 꺼낸 노드와 연결된 노드를 큐에 넣어줌 
    - 큐에서 꺼냈으면 2. 에서 만든 거리를 나타내는 배열에 거리를 더해줘야 되는데
      이전 노드에 1만큼 떨어진 것이므로 튜플 형태로 큐에 넣어야 될듯 (이전 노드, 현재 노드)
    - 거리를 나타내는 배열 distance에 ' distance[현재 노드] = distance[이전 노드] + 1'
    - 이미 거리가 정해진 노드는 재방문할 필요 없으므로 visited 처리
4. 가장 큰 값 구하기 
*/