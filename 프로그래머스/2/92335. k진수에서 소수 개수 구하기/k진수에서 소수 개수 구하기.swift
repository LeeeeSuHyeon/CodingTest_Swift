import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    
    func isPrime(_ num: Int) -> Bool {
        if num < 2 {
            return false
        }
        
        if num == 2 || num == 3 {
            return true
        }
        
        // 제곱근까지만 검사해도 소수인지 판별 가능
        let s = Int(sqrt(Double(num)))
        for i in 2...s where num % i == 0 { return false }
        
        return true
    }

    let nums = String(n, radix: k).split(separator: "0").map { Int($0)! }
    var answer = 0
    
    for n in nums where isPrime(n) { answer += 1 }
    
    return answer
}