import Foundation

let input = Int(String(readLine()!))!

for _ in 0..<input {
    var answer = ""
    var money = Int(String(readLine()!))!
    answer += "\(money / 25) "
    money %= 25
    answer += "\(money / 10) "
    money %= 10
    answer += "\(money / 5) "
    answer += "\(money % 5)"
    print(answer)
}