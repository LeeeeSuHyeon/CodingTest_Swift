let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int($0)!}
var sums = Array(repeating: 0, count: N + 1)

for i in 1...N {
    sums[i] = sums[i - 1] + nums[i - 1]
}

let M = Int(readLine()!)!
for _ in 0..<M {
    let ij = readLine()!.split(separator: " ").map{Int($0)!}
    let (i, j) = (ij[0], ij[1])
    print(sums[j] - sums[i - 1])
}
