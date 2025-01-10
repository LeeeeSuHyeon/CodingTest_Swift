let n = Int(readLine()!)!
var arr = [[0]]

for _ in 0..<n {
    arr.append([0] + readLine()!.split(separator: " ").map{Int($0)!})
}

var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

for i in 1...n {
    for j in 1...i {
        dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - 1]) + arr[i][j]
    }
}

print(dp[n].max() ?? 0)
