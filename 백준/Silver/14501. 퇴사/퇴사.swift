let N = Int(readLine()!)!
var P = [[Int]]()
var answer = 0
for _ in 0..<N {
    P.append(readLine()!.split(separator : " ").map{Int($0)!})
}

func recur(_ index : Int, _ value : Int) {
    if index == N {
        answer = max(answer, value)
        return
    }
    if index > N {
        return
    }
    recur(index + P[index][0], value + P[index][1])
    recur(index + 1, value)
}
recur(0, 0)
print(answer)