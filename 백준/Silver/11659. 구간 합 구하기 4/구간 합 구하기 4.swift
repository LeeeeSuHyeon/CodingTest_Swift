let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var nums = [0] + readLine()!.split(separator: " ").map{Int($0)!}
var sums = Array(repeating: 0, count: N + 1) // 부분합 배열

for i in 1...N {
    sums[i] = sums[i - 1] + nums[i] // 부분합 구하기
}

for _ in 0..<M {
    let ij = readLine()!.split(separator: " ").map{Int($0)!}
    let (i, j) = (ij[0], ij[1])
    print(sums[j] - sums[i - 1])
}
