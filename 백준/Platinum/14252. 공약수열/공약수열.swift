import Foundation
let _ = Int(readLine()!)!
let input = readLine()!.split(separator : " ").map{Int($0)!}.sorted()
var count = 0

func gcd(_ a : Int, _ b : Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}
for i in 0..<input.count - 1 { // 0, 1, 2
    let num = input[i]    // 17 42 2184
    let nextNum = input[i + 1] // 42 2184 2200
    if gcd(nextNum, num) != 1 {
         for j in num..<nextNum {
            if gcd(j, num) == 1 && gcd(j, nextNum) == 1 {
                count += 1
                break
            }
            if j == nextNum - 1 {
                count += 2
                break
            }
        }
    }
}
print(count)
