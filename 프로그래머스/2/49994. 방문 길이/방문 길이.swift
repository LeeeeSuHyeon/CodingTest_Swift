import Foundation

struct Position: Hashable {
    var x: Int
    var y: Int
}

func solution(_ dirs:String) -> Int {
    var visited = [Position: [Position]]() // 좌표를 키 값으로 이전 좌표 배열을 값으로 저장
    var current = Position(x: 0, y: 0)
    let dirs = dirs.map { $0 }
    var answer = 0
    
    for dir in dirs {
        let next = nextPosition(current: current, direction: dir)
        guard isTransferable(next) else { continue } // 좌표 평면 넘어가면 무시
        
        // 이미 지나간 길일 경우
        if let positions = visited[next], positions.contains(current) {
            current = next
        } else {
            // visited[next]가 없거나, 새로운 길일 경우
            visited[next, default: []].append(current)
            visited[current, default: []].append(next)
        
            current = next
            answer += 1
        }
    }

    return answer
}

func nextPosition(current: Position, direction: Character) -> Position {
    var x = current.x
    var y = current.y
    switch direction {
        case "U": y += 1
        case "D": y -= 1
        case "R": x += 1
        case "L": x -= 1
        default: break
    }
    
    return Position(x: x, y: y)
}

func isTransferable(_ position: Position) -> Bool {
    return abs(position.x) <= 5 && abs(position.y) <= 5
}

/*
1. 동일한 길 무시
2. 좌표평면을 벗어나도 무시 

3. 방향 상관 없이 지나간 길 체크해야 함

*/