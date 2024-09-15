import Foundation
let input = Int(readLine()!)!
var range = Int(pow(10.0, Double(input)))
var prime = [Bool](repeating: true, count: range + 1)
prime[0] = false
prime[1] = false
for i in 2...Int(sqrt(Double(range))){
    if !prime[i] {
        continue
    }
    for j in stride(from: i * i, to: range + 1, by: i){
        prime[j] = false
    }
}

func recur(_ index : Int, _ num : Int) {
    if index == input {
        if prime[num] {
            print(num)
        }
        return
    }
    for i in 1...9 {
        let nextNum = num * 10 + i
        if prime[nextNum] {
            recur(index + 1, nextNum)
        }
    }
}
recur(0, 0)