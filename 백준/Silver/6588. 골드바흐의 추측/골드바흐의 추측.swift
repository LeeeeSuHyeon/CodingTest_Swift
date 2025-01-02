let maxNum = 1000000
var isPrime = Array(repeating: true, count: maxNum + 1)
isPrime[0] = false
isPrime[1] = false
for i in 2...Int(Double(maxNum).squareRoot()) {
    if !isPrime[i] {continue}
    for j in stride(from: i * i, through: maxNum, by: i) {
        isPrime[j] = false
    }
}

while let input = readLine(), let num = Int(input), num != 0{
    for i in 3...num / 2 {
        if i % 2 != 0 && isPrime[i] && isPrime[num - i] {
            print("\(num) = \(i) + \(num - i)")
            break
        }
        if i == num / 2 {
            print("Goldbach's conjecture is wrong.")
        }
    }
}
