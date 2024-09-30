let input = readLine()!.split(separator:" ").map{Int($0)!}
var arr = [[Int]]()
for _ in 0..<input[0] {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}
var dp = Array(repeating: Array(repeating: -1, count: input[1]), count: input[0])

func recur(y : Int, x : Int) -> Int {
    if dp[y][x] != -1 {
        return dp[y][x]
    }
    
    if y == input[0] - 1 && x == input[1] - 1 {
        return 1
    }
    var route = 0
    
    for xy in [[0, 1], [0, -1], [1, 0], [-1, 0]] {
        let dx = xy[0] + x
        let dy = xy[1] + y
        
        if (dx >= 0 && dx < input[1]) && (dy >= 0 && dy < input[0]) {
            if arr[y][x] > arr[dy][dx]{
                route += recur(y: dy, x: dx)
            }
        }
    }
    dp[y][x] = route
    return dp[y][x]
}

let _ = recur(y: 0, x: 0)
print(dp.flatMap{$0}.max() ?? 0)
