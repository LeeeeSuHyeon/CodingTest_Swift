let N = Int(readLine()!)!
var graph = [[Int]]()

for _ in 0..<N {
    graph.append(readLine()!.map{Int(String($0))!})
}

var dp = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
var answers = [Int]()

for y in 0..<N {
    for x in 0..<N {
        if graph[y][x] == 1 && !dp[y][x]{
            var q = [[y, x]]
            var count = 1
            dp[y][x] = true
            while q.count > 0 {
                let yx = q.removeFirst()
                for dyx in [[0, 1], [0, -1], [1, 0], [-1, 0]] {
                    let ey = yx[0] + dyx[0]
                    let ex = yx[1] + dyx[1]
                    
                    if 0 <= ey && ey < N && 0 <= ex && ex < N {
                        if dp[ey][ex] == false {
                            if graph[ey][ex] == 1 {
                                q.append([ey, ex])
                                count += 1
                                dp[ey][ex] = true
                            }
                        }
                    }
                }
            }
            answers.append(count)

        }
    }
}

print(answers.count)
for answer in answers.sorted() {
    print(answer)
}
