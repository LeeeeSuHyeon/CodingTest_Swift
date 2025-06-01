import Foundation

func solution(_ sticker:[Int]) -> Int{
    let count = sticker.count
    var answer = 0
    var dp = Array(repeating: Array(repeating: 0, count: count), count: 2)
    
    guard count > 2 else {
        return sticker.max()!
    }
    
    dp[0][0] = sticker[0]
    dp[0][1] = 0
    dp[0][2] = dp[0][0] + sticker[2]
    
    dp[1][0] = 0
    dp[1][1] = sticker[1] < sticker[2] ? 0 : sticker[1]
    dp[1][2] = sticker[1] < sticker[2] ? sticker[2] : 0
    
    for i in 0...1 {
        for j in 3..<count {
            if i == 0, j == count - 1 { break }
            dp[i][j] = max(dp[i][j - 2], dp[i][j - 3]) + sticker[j]
        }   
    }

    return dp.flatMap{$0}.max()!
}

/*
DFS 완전탐색

14를 선택했을 때 다음 선택지는 5 or 11
5를 선택했을 때 다음 선택지 3 or 9
원형인 것 고려할 것


----
DP
DP[i] = max(DP[i - 2], DP[i - 3] + sticker[i]

*/