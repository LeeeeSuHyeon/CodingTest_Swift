import Foundation

let input = readLine()!.split(separator : " ").map{Int($0)!}
let M = input[0]
let N = input[1]
for i in M...N {
    if i == 1 {continue}
    if i == 2 || i == 3{
        print(i)
        continue
    }
    var isDecimal = true
    for j in 2...Int(sqrt(Double(i))) {
        if i % j == 0 {
            isDecimal = false
            break
        }
    }
    if isDecimal {
        print(i)
    }
}