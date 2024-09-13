let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, S) = (input[0], input[1])
let numArr = readLine()!.split(separator: " ").map {Int($0)!}
var count = 0
func recur(_ index : Int, _ sum : Int) {
    if index == N {
        if sum == S{
            count += 1
        }
        return
    }
    recur(index + 1, sum + numArr[index])
    recur(index + 1, sum)
}

recur(0, 0)
print(S == 0 ? count - 1 : count)
