let maxNum = 2000000
var isPrime = Array(repeating: true, count: maxNum + 1)
isPrime[0] = false
isPrime[1] = false

for i in 2...maxNum {
    if !isPrime[i] { continue }
    for j in stride(from: i * i, through: maxNum, by: i) {
        isPrime[j] = false
    }
}

let primeNum = isPrime.enumerated().filter{$0.1}.map{$0.0}

func isPalindrome(num: Int) -> Bool {
    let str = String(num).map{$0}
    var left = 0
    var right = str.count - 1
    
    while left <= right {
        if str[left] == str[right] {
            left += 1
            right -= 1
        } else {
            return false
        }
    }
    return true
}


let N = Int(readLine()!)!

for i in N...maxNum {
    if isPrime[i] && isPalindrome(num: i) {
        print(i)
        break
    }
}


