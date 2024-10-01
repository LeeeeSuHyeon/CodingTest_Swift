let input = Int(readLine()!)!
let arr = readLine()!.split(separator:  " ").map{Int($0)!}
var dp = Array(repeating: 1, count: input)
var idx = Array(repeating: -1, count: input)
var answer = [Int]()

for i in 0..<input {
    for j in 0...i {
        if arr[i] > arr[j] {
            if dp[i] < dp[j] + 1 {
                dp[i] = dp[j] + 1
                idx[i] = j
            }
        }
    }
}
if let maxNum = dp.max(), let maxIndex = dp.firstIndex(of: maxNum) {
    var maxIndex = maxIndex
    while maxIndex != -1 {
        answer.append(arr[maxIndex])
        maxIndex = idx[maxIndex]
    }
}

print(dp.max() ?? 0)
print(answer.sorted().map{String($0)}.joined(separator: " "))
