let N = Int(readLine()!)!
var P = [[Int]]()
var answer = 0
for _ in 0..<N {
    P.append(readLine()!.split(separator : " ").map{Int($0)!})
}

func recur(_ index : Int, _ value : Int, _ target : Int, _ count : Int) {
    if index == N {
        if target <= N {
            answer = max(answer, value)
        }
        return
    }
    if P[index][0] <= N - index && target <= count{
        recur(index + 1, value + P[index][1], P[index][0], 1)
    }
    recur(index + 1, value, target, count + 1)
}
recur(0, 0, 0, 0)
print(answer)