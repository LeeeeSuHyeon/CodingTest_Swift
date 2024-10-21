func organicFarming(M : Int, N : Int, K : Int) {
    var answer = 0
    var graph = [[Int]](repeating: [Int](repeating: 0, count: M), count: N)
    var dp = [[Int]](repeating: [Int](repeating: 0, count: M), count: N)
    for _ in 0..<K {
        let xy = readLine()!.split(separator: " ").map{Int($0)!}
        graph[xy[1]][xy[0]] = 1
    }
    for y in 0..<N {
        for x in 0..<M {
            if graph[y][x] == 1 {
                if dp[y][x] == 0 {
                    answer += 1
                }
                var q = [[y, x]]
                while !q.isEmpty {
                    let yx = q.removeFirst()
                    for eyx in [[0, 1], [0, -1], [1, 0], [-1, 0]] {
                        let dy = yx[0] + eyx[0]
                        let dx = yx[1] + eyx[1]
                        if 0 <= dy && dy < N && 0 <= dx && dx < M {
                            if graph[dy][dx] == 1 {
                                if dp[dy][dx] == 0 {
                                    dp[dy][dx] = 1
                                    q.append([dy, dx])
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    print(answer)
}

let T = Int(readLine()!)!

for _ in 0..<T{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    organicFarming(M: input[0], N: input[1], K: input[2])
}
