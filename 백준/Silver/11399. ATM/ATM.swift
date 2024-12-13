let N = Int(readLine()!)!
var P = readLine()!.split(separator: " ").map{Int($0)!}
var answer = 0
for (i, value) in P.sorted().enumerated() {
    answer += (N - i) * value
}

print(answer)
