let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, K) = (input[0], input[1])
var weights = [Int]()
var values = [Int]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    weights.append(input[0])
    values.append(input[1])
}

var dp = [[Int]](repeating: Array(repeating: -1, count: 100_001), count: N + 1)

func recur(_ index : Int, _ weight : Int) -> Int {
    if weight > K {
        return -9999999
    }
    if index == N {
        return 0
    }
    if dp[index][weight] != -1 {
        return dp[index][weight]
    }
    dp[index][weight] = max(recur(index + 1, weight + weights[index]) + values[index], recur(index + 1, weight))
    return  dp[index][weight]
}
let _ = recur(0, 0)
print(dp.flatMap{$0}.max() ?? 0)
