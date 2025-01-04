var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31) // 2차원 배열로 만들어서 dp[10][3] : 10개 중 3개를 선택할 경우의 수

for i in 0...30 {
    for j in 0...i {
        if i == j || j == 0 {
            dp[i][j] = 1
            continue
        }
        dp[i][j] = dp[i - 1][j] + dp[i - 1][j - 1]
    }
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let (N, M) = (NM[0], NM[1])
    print(dp[M][N])
}

