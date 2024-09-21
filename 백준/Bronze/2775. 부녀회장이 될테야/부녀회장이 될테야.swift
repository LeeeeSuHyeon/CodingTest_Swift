let input = Int(readLine()!)!
let k = 14
var dp = [[Int]](repeating: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14] ,count: k + 1)
for i in 1...k {
    for j in 1...k {
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
    }
}


for _ in 0..<input {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(dp[k][n])
}
