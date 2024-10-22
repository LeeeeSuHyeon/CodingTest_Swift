let input = readLine()!.split(separator: " ").map{Int($0)!}
let (Y, X) = (input[1], input[0])
var graph = [[Int]]()
var q = [[Int]]()
var index = 0
for i in 0..<Y {
    let tomato = readLine()!.split(separator: " ").map{Int($0)!}
    for (idx, value) in tomato.enumerated() {
        if value == 1 {
            q.append([i, idx])
        }
    }
    graph.append(tomato)
}

while index < q.count {
    let yx = q[index]
    index += 1
    for eyx in [[0, 1], [0, -1], [1, 0], [-1, 0]] {
        let dy = eyx[0] + yx[0]
        let dx = eyx[1] + yx[1]
        if 0 <= dy && dy < Y && 0 <= dx && dx < X {
            if graph[dy][dx] == 0 {
                graph[dy][dx] = graph[yx[0]][yx[1]] + 1
                q.append([dy, dx])
            }
        }
    }
}
let answer = graph.flatMap({$0})
print(answer.contains(0) ? -1 : answer.max()! - 1)
