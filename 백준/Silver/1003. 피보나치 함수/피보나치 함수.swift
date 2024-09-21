let input = Int(readLine()!)!
var dp = [[Int]](repeating: [0, 0], count: 41)
dp[0] = [1, 0]
dp[1] = [0, 1]
for i in 2...40 {
    dp[i] = [dp[i - 1][0] + dp[i - 2][0], dp[i - 1][1] + dp[i - 2][1]]
}
for _ in 0..<input {
    let input = Int(readLine()!)!
    print(dp[input][0], dp[input][1])
}
