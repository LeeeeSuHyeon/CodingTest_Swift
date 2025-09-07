import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    let maxNum = Int.max
    var dp = Array(repeating: maxNum, count: y + 1)
    dp[y] = 0
    
    for i in stride(from: y, through: x, by: -1) {
        if i + n <= y, dp[i + n] != maxNum {
            dp[i] = min(dp[i], dp[i + n] + 1)
        }
        
        if i * 2 <= y, dp[i * 2] != maxNum  {
            dp[i] = min(dp[i], dp[i * 2] + 1)
        }
        
        if i * 3 <= y, dp[i * 3] != maxNum  {
            dp[i] = min(dp[i], dp[i * 3] + 1)
        }
    }
    return dp[x] == maxNum ? -1 : dp[x]
}

/*
1. dp 사용
2. y까지의 배열 생성 후 해당 수가 될 수 있는 연산 횟수를 메모이제이션
3. 
*/