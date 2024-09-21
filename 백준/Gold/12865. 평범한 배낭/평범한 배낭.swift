let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, K) = (input[0], input[1])
var weights = [Int]()
var values = [Int]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    weights.append(input[0])
    values.append(input[1])
}

var dp = [[Int]](repeating: Array(repeating: 0, count: K + 1), count: N + 1)

for i in 1...N {
    for weight in 0...K {       // weight : 배낭의 남은 공간
        // 현재 배낭에 담으려는 무게(weights[i - 1]가 배낭에 남은 공간(weight) 보다 작을 때 즉, 아이템을 넣을 수 없을 때
        if weight < weights[i - 1]  {
            dp[i][weight] = dp[i - 1][weight]
        } else {
            dp[i][weight] = max(dp[i - 1][weight - weights[i - 1]] + values[i - 1], dp[i - 1][weight])
        }
        
    }
}
print(dp.flatMap{$0}.max() ?? 0)
