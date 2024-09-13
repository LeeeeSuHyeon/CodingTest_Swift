let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, S) = (input[0], input[1])
let numArr = readLine()!.split(separator: " ").map {Int($0)!}
var count = 0
func recur(_ index : Int, _ arr : [Int]) {
    if index == N {
        if arr.reduce(0, +) == S && !arr.isEmpty{
            count += 1
        }
        return
    }
    recur(index + 1, arr + [numArr[index]])
    recur(index + 1, arr)
}

recur(0, [])
print(count)
