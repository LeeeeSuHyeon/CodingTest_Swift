let input = Int(readLine()!)!
let arr = readLine()!.split(separator:  " ").map{Int($0)!}
var dp = Array(repeating: 1, count: input)

for i in 0..<input {
    for j in 0...i {
        if arr[i] < arr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}
print(dp.max() ?? 0)

