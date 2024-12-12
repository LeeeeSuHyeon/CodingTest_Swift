let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var nums = [0] + readLine()!.split(separator: " ").map{Int($0)!}
var sums = Array(repeating: 0, count: N + 1) // 부분합 배열
var count = 0

for i in 1...N {
    sums[i] = sums[i - 1] + nums[i] // 부분합 구하기
}
for i in 1...N {
    for j in 0..<i{
        count += sums[i] - sums[j] == M ? 1 : 0
    }
}
print(count)
