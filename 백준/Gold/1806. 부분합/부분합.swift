let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, S) = (input[0], input[1])
let nums = readLine()!.split(separator: " ").map{Int($0)!}
var length = 0
var sum = 0
var start = 0
var end = 0
var answer = N
var exist = false

while end < N {
    sum += nums[end]
    length += 1
    if sum >= S {
        exist = true
        while sum - nums[start] >= S {
            sum -= nums[start]
            start += 1
            length -= 1
        }
        answer = min(answer, length)
        sum -= nums[start]
        length -= 1
        start += 1
        end += 1

    } else {
        end += 1
    }
}

print(exist ? answer : 0)