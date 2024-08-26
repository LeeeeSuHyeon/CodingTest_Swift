import Foundation
let input = readLine()!.split(separator : " ").map{Int($0)!}
let gcd = input[0]
let lcm = input[1]
var target = lcm / gcd // 30
var minSum = Int.max
var answer = (0, 0)
func gcd(_ a : Int, _ b : Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}
func lcm(_ a : Int, _ b : Int) -> Int {
    return a * b / gcd(a, b)
}
for i in 1...Int(sqrt(Double(target))) {// 1...5
    if target % i == 0 {// 1,2,3,5
        let m = i
        let n = target / i    // 30 15 10 6
        let x = m * gcd    // 6 12 18 30
        let y = n * gcd    // 180 90 60 36
        if  x + y < minSum && gcd(x, y) == gcd && lcm(x, y) == lcm{
            minSum = x + y
            answer = (min(x, y), max(x, y))
        }
    }
}
print("\(answer.0) \(answer.1)")