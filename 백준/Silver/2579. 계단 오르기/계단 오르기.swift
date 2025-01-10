let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n + 2)
var score = [0] // 점수 배열
for _ in 0..<n {
    score.append(Int(readLine()!)!)
}

dp[n] = [0, score[n], score[n]]
dp[n + 1] = [0, Int.min, Int.min]

for i in stride(from: n - 1, through: 0, by: -1) {
    dp[i][1] = max(dp[i + 1][2], dp[i + 2][1]) + score[i]
    dp[i][2] = dp[i + 2][1] + score[i]
}
print(dp.flatMap{$0}.max() ?? 0)
