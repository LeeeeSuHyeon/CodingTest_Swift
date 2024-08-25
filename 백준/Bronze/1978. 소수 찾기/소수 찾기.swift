import Foundation
let input = Int(readLine()!)!
var count = 0
readLine()!.split(separator : " ").map {
    var num = Int($0)!
    var c = 0
    for i in 1..<num {
        c = num % i == 0 ? c + 1 : c
    }
    count = c == 1 ? count + 1 : count
}

print(count)