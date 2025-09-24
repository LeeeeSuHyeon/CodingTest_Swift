import Foundation

func solution(_ maps:[String]) -> Int {
    let maps = maps.map { $0.map { String($0) } }
    let startIndex = Int(maps.flatMap { $0 }.firstIndex { $0 == "S" }!)
    let yCount = maps.count
    let xCount = maps.first!.count
    let start = (x: startIndex % xCount, y: startIndex / xCount)
    
    func bfs(_ start: (x: Int, y: Int), _ target: String) -> (distance: Int, (x: Int, y: Int)?) {
        var visited = Array(repeating: Array(repeating: false, count: xCount), count: yCount)   
        let (x, y) = start
        var queue: [(x: Int, y: Int, distance: Int)] = [(x, y, 0)]
        visited[y][x] = true
        
        while !queue.isEmpty {
            let (x, y, distance) = queue.removeFirst()    
            
            if maps[y][x] == target {
                return (distance, (x, y))    
            }
            
            for (dy, dx) in [(0, 1), (1, 0), (0, -1), (-1, 0)] {
                let (ey, ex) = (dy + y, dx + x)

                if ey >= 0, ey < yCount, ex >= 0, ex < xCount, maps[ey][ex] != "X", !visited[ey][ex] {
                    visited[ey][ex] = true
                    queue.append((ex, ey, distance + 1))
                }
            }
        }
        
        return (-1, nil)
    }

    let (lDistance, lever) = bfs(start, "L")
    if lDistance == -1 { return -1 }
    
    let (eDistance, _) = bfs(lever!, "E")
    if eDistance == -1 { return -1 }
    
    return lDistance + eDistance
}

/*
시작 지점부터 레버까지의 최단 시간 + 레버부터 출구까지 최단 시간
*/