import Foundation

var prime = [Bool](repeating: true, count: 10001)
prime[0] = false
prime[1] = false
for i in 2...Int(sqrt(10000.0)) {
    if !prime[i] {
        continue
    }
    for j in stride(from: i * i, to: 10001, by: i) {
        prime[j] = false
    }
}

let input = Int(readLine()!)!
for _ in 0..<input {
    let input = Int(readLine()!)!
    var answer = 0
    for i in stride(from: input / 2, to: 1, by: -1) {
        if prime[i] && prime[input - i]{
            answer = i
            break
        }
    }
    print(answer, input - answer)
    
}
