import Foundation
let input = readLine()!.split(separator : " ")
let (n, b) = (input[0].map{String($0)}, Int(input[1])!)
var answer = 0
var count = n.count - 1
for i in 0..<n.count {
    var newI = Int(n[i]) ?? Int(UnicodeScalar(n[i])!.value) - 55
    if count > 0 {
       var num = 1
        for _ in 1...count {
            num *= b
        }
        answer += num * newI
        count -= 1
    }
    else {
        answer += newI
    }
}
print(answer)


