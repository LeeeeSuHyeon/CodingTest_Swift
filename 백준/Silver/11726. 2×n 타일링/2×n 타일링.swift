let input = Int(readLine()!)!
if input == 1 {
    print(1)
} else {
    var dp = [Int](repeating: 1, count: input + 1)
    for i in 2...input {
     dp[i] = (dp[i - 1] + dp[i - 2]) % 10007
    }
    print(dp[input])
}

