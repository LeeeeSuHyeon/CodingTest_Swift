let N = Int(readLine()!)!
var TArr = [Int]()
var PArr = [Int]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    TArr.append(input[0])
    PArr.append(input[1])
}

var dp = [Int](repeating: 0, count: N + 1)

for i in stride(from: N - 1, to: -1, by: -1){
    if i + TArr[i] > N {
        dp[i] = dp[i + 1]
    } else {
        dp[i] = max(dp[(i + TArr[i])] + PArr[i], dp[i + 1])
    }
}
print(dp.max() ?? 0)
