let input = Int(readLine()!)!
var colors = [[Int]]()
for _ in 0..<input {
    colors.append(readLine()!.split(separator: " ").map{Int($0)!})
}
var dp = [[Int]](repeating: [Int](repeating: 0, count: 3), count : input + 1)
for i in 1...input {    // index
    for j in 0...2 {    // color
        if j == 0 { // color : R
            dp[i][j] = min(dp[i - 1][1], dp[i - 1][2]) + colors[i - 1][j]
        }
        if j == 1 { // color : G
            dp[i][j] = min(dp[i - 1][2], dp[i - 1][0]) + colors[i - 1][j]
        }
        if j == 2 { // color : B
            dp[i][j] = min(dp[i - 1][1], dp[i - 1][0]) + colors[i - 1][j]
        }
    }
}
print(dp[input].min() ?? 0)
