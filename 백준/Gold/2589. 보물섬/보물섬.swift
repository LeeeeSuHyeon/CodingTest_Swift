let input = readLine()!.split(separator: " ").map{Int($0)!}
let (Y, X) = (input[0], input[1])
var graph = [[String]]()
for _ in 0..<Y {
    graph.append(readLine()!.map{String($0)})
}
var maxLength = 0

for y in 0..<Y {
    for x in 0..<X {
        if graph[y][x] == "L" {
            var visited = [[Int]](repeating: [Int](repeating: 0, count: X), count: Y)
            var distance = [[Int]](repeating: [Int](repeating: 0, count: X), count: Y)
            var q = [[y,x]]
            visited[y][x] = 1
            
            while q.count > 0 {
                let yx = q.removeFirst()
                for eyx in [[0, 1], [0, -1], [1, 0], [-1, 0]] {
                    let dy = yx[0] + eyx[0]
                    let dx = yx[1] + eyx[1]
                    if 0 <= dx && dx < X && 0 <= dy && dy < Y{
                        if graph[dy][dx] == "L" {
                            if visited[dy][dx] == 0 {
                                visited[dy][dx] = 1
                                distance[dy][dx] = distance[yx[0]][yx[1]] + 1
                                maxLength = max(maxLength, distance[dy][dx])
                                q.append([dy, dx])
                            }
                        }
                    }
                }
            }

        }
    }
}

print(maxLength)
