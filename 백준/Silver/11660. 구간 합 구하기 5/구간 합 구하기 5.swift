let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var arr = [[Int]]()
var sumArr = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1)

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

for i in 1...N{
    for j in 1...N{
        sumArr[i][j] = sumArr[i - 1][j] + sumArr[i][j - 1] + arr[i - 1][j - 1] - sumArr[i - 1][j - 1]
    }
}

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
    let answer = sumArr[x2][y2] - sumArr[x1 - 1][y2] - sumArr[x2][y1 - 1] + sumArr[x1 - 1][y1 - 1]
    print(answer)
}
