let input = Int(readLine()!)!
if input == 1 {
    print(0)
} else {
    var dp = [Int](repeating: 0, count: input + 1)

    // 바텀업 DP
    for i in 2...input {
        dp[i] = dp[i - 1] + 1
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i / 2] + 1)
        }
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i / 3] + 1)
        }
    }
    print(dp[input])

}
