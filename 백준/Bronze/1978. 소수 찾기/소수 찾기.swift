import Foundation
let input = Int(readLine()!)!
var count = 0
readLine()!.split(separator : " ").map {
    var num = Int($0)!
    var c = 0
    for i in 1...num {
        if num % i == 0 {
            c += 1
        }
    }
    if c == 2 {
        count += 1
    }
}

print(count)