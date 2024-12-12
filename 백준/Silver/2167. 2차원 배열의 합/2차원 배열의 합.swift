let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var nums = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)
var sumArr = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)

for i in 1...N{
    nums[i] = [0] + readLine()!.split(separator: " ").map{Int($0)!}
}

for i in 1...N {
    for j in 1...M{
        sumArr[i][j] = sumArr[i - 1][j] + sumArr[i][j - 1] - sumArr[i - 1][j - 1] + nums[i][j]
    }
}

let K = Int(readLine()!)!

for _ in 0..<K {
    let ijxy = readLine()!.split(separator: " ").map{Int($0)!}
    let (i, j, x, y) = (ijxy[0], ijxy[1], ijxy[2], ijxy[3])
    print(sumArr[x][y] - sumArr[x][j - 1] - sumArr[i - 1][y] + sumArr[i - 1][j - 1])
}
