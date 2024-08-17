import Foundation

let input = readLine()!.split(separator : " ").map{Int($0)!}
var dic = [String : Int]()
var answer = 0
for _ in 0..<input[0] {
    dic[readLine()!] = 0
}
for _ in 0..<input[1] {
    let input = readLine()!
    if dic[input] != nil {
        dic[input] = dic[input]! + 1
    }
}
for value in dic.values {
    answer += value
}
print(answer)