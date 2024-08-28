import Foundation
let input = readLine()!.split(separator : " ").map{Int($0)!}
func recur(_ depth : Int, _ start : Int, _ arr : [Int])  {
    if depth == input[1] {
        print(arr.map{String($0)}.joined(separator: " "))
        return
    }
    if start > input[0] { return }
    for i in start...input[0] {
        recur(depth + 1, i + 1, arr + [i])
    }
}

recur(0, 1, [])