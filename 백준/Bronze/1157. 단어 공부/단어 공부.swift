import Foundation 
let input = String(readLine()!).uppercased()
var dic = [Character : Int]()
for i in input {
    dic[i, default : 0] += 1
}
let max = dic.values.max()
var answer = [Character]()
for key in dic.keys {
    if dic[key] == max {
        answer.append(key)
        if answer.count > 1 {
            break
        }
    }

}
print(answer.count != 1 ? "?" : answer[0])
