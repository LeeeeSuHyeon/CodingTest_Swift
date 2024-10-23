let NK = readLine()!.split(separator: " ").map{Int($0)!}
let (N, K) = (NK[0], NK[1])
var dp = [Int](repeating: -1, count: 100000 * 2 + 1)
dp[N] = 0
var q = [N]
var idx = 0

if N == K {
    print(0)
}
else {
    while true {
        let value = q[idx]
        idx += 1
        var addIdx = value - 1
        
        if addIdx >= 0 && dp[addIdx] == -1{
            q.append(addIdx)
            dp[addIdx] = dp[value] + 1
            if addIdx == K {
                break
            }
        }
        
        addIdx = value * 2
        if addIdx <= K + 1 && dp[addIdx] == -1 {
            q.append(addIdx)
            dp[addIdx] = dp[value] + 1
            if addIdx == K {
                break
            }
        }
        
        addIdx = value + 1
        if value < K && dp[addIdx] == -1 {
            q.append(addIdx)
            dp[addIdx] = dp[value] + 1
            if addIdx == K {
                break
            }
        }
    }
    print(dp[K])
}

