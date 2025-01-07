let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
let B = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
var answer = 0
for i in 0..<N {
    answer += A[i] * B[i]
}

print(answer)
