let input = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<input {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}
arr.sort(by: {$0[0] < $1[0]})
var dp = Array(repeating: 1, count: input)

for i in 0..<input {
    for j in 0...i {
        if arr[i][1] > arr[j][1] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}
let maxCount = dp.max() ?? 0
print(input - maxCount)
