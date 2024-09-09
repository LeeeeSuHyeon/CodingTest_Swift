let N = Int(readLine()!)!
var TArr = [Int]()
var PArr = [Int]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    TArr.append(input[0])
    PArr.append(input[1])
}

var dp = [Int](repeating: -1, count: N + 1)
func recur(index : Int) -> Int{
    if index == N {
        return 0
    }
    if index > N {
        return -999999
    }
    if dp[index] != -1 {
        return dp[index]
    }
    dp[index] = max(recur(index: index + TArr[index]) + PArr[index], recur(index: index + 1))
    
    return dp[index]
}

let _ = recur(index: 0)
print(dp.max() ?? 0)
