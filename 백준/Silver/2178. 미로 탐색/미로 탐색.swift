let input = readLine()!.split(separator: " ").map{Int($0)!}
let (Y, X) = (input[0], input[1])
var miro = [[Int]]()
for _ in 0..<Y {
    miro.append(readLine()!.map{Int(String($0))!})
}
var dp = [[Int]](repeating: [Int](repeating: 0, count: X), count: Y)



var q = [[0, 0]]
dp[0][0] = 1

while q.count > 0 {
    let popYX = q.removeFirst()
    let (ey, ex) = (popYX[0], popYX[1])
    if miro[ey][ex] == 1 {
        for yx in [[0, 1], [0, -1], [1, 0], [-1, 0]]{
            let dy = yx[0] + ey
            let dx = yx[1] + ex
            if 0 <= dy && dy < Y && 0 <= dx && dx < X {
                if dp[dy][dx] == 0 {
                    if miro[dy][dx] == 1{
                        q.append([dy, dx])
                        dp[dy][dx] = dp[ey][ex] + 1
                    }
                }
            }

        }
    }
}
print(dp[Y - 1][X - 1])
