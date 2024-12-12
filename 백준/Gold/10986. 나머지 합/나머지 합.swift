let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var nums = readLine()!.split(separator: " ").map{Int($0)!}
var sums = Array(repeating: 0, count: N) // 부분합
var countArr = Array(repeating: 0, count: M) // 부분합 중 나머지가 i인 수의 개수 저장
var totalCount = 0

sums[0] = nums[0]
for i in 1..<N{
    sums[i] = sums[i - 1] + nums[i]
}

for i in 0..<N{
    let c = sums[i] % M // 나머지
    countArr[c] += 1
    totalCount += c == 0 ? 1 : 0
}

for i in 0..<M {
    let count = countArr[i]
    if count > 1 {
        totalCount += count * (count - 1) / 2
    }
}

print(totalCount)
