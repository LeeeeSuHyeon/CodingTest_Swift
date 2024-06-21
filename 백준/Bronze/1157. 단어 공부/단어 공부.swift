import Foundation 
let input = String(readLine()!).uppercased()
var dic = [Character : Int]()
for i in input {
    if let a = dic[i] {
        dic[i] = a + 1
    }
    else {
        dic[i] = 1
    }
}
let max = dic.values.max()
var answer = [Character]()
for key in dic.keys {
    if dic[key] == max {
        answer.append(key)
    }
}
print(answer.count != 1 ? "?" : answer[0])
