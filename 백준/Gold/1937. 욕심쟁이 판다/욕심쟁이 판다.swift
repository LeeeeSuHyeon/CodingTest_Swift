let input = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<input {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}
var dp = [[Int]](repeating: [Int](repeating: 0, count: input), count: input)

func recur(x : Int, y : Int) -> Int {
    if dp[x][y] != 0 {
        return dp[x][y]
    }
    
    for xy in [[0, 1], [0, -1], [1, 0], [-1 ,0]]{
        let dx = xy[0] + x
        let dy = xy[1] + y
        
        if dx >= 0 && dx < input && dy >= 0 && dy < input {
            if arr[x][y] < arr[dx][dy] {
                dp[x][y] = max(dp[x][y], recur(x: dx, y: dy) + 1)
            }
        }
    }
    return dp[x][y]
}

for x in 0..<input {
    for y in 0..<input {
        let _ = recur(x: x, y: y)
    }
}
print((dp.flatMap{$0}.max() ?? 0) + 1)
