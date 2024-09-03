import Foundation
let input = Int(readLine()!)!
var arr = [[Int]]()
var answer = 1000000000
for _ in 0..<input {
    arr.append(readLine()!.split(separator : " ").map{Int($0)!})
}
func recur(_ index : Int, _ S : Int, _ B : Int, _ use : Int) {
    if index == input {
        if use == 0 { return }
        answer = min(answer, abs(S - B))
        return
    }
    recur(index + 1, S * arr[index][0], B + arr[index][1], use + 1)
    recur(index + 1, S, B, use)
}
recur(0, 1, 0, 0)
print(answer)