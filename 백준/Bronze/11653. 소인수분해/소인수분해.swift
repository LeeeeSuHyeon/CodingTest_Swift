import Foundation

var num = Int(readLine()!)!
if num > 1 {
    for i in 2...num {
        if num <= 1 {break}
        if i * i > num {
            print(num)
            break
        }
        while(num % i == 0) {
            print(i)
            num /= i
        }
    }
}
