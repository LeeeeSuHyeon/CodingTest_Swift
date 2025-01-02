let maxNum = 1000000
var isPrime = Array(repeating: true, count: maxNum + 1)
isPrime[0] = false
isPrime[1] = false

for i in 2...maxNum {
    if !isPrime[i] { continue }
    for j in stride(from: i * i, through: maxNum, by: i) {
        isPrime[j] = false
    }
}

func solution(N: Int) {
    var count = 0
    for i in 2...N/2 {
        if isPrime[i] && isPrime[N - i] {
            count += 1
        }
    }
    print(count)
}

let T = Int(readLine()!)!
for _ in 0..<T {
    let N = Int(readLine()!)!
    solution(N: N)
}
