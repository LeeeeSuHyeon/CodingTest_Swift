import Foundation 

let input = readLine()!.split(separator : " ").map{Int(String($0))!}
let number = readLine()!.split(separator : " ").map{Int(String($0))!}
var answer = 0
for i in 0..<input[0] - 2 {
    for j in i+1..<input[0] - 1{
        for k in j+1..<input[0] {
            var num = number[i] + number[j] + number[k]
            num = num > input[1] ? 0 : num
            answer = input[1] - answer > input[1] - num ? num : answer
        }
    }
}
print(answer)


