import Foundation

let input = Int(readLine()!)!
var answer = 0
for _ in 0..<input {
    var tf = true
    let str = String(readLine()!).map{$0}
    var arr = [str[0]]
    for i in str {
        if arr.contains(i) && arr.last != i {
            tf = false
        }
        else {
            arr.append(i)
        }
    }
    answer += tf ? 1 : 0
}
print(answer)