import Foundation

let input = Int(readLine()!)!
var num = input
var i = 2
while(num > 1) {
    if num % i == 0 {
        print(i)
        num = num / i
    } else {
        i += 1
    }
}