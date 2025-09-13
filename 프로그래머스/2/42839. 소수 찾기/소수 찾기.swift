import Foundation

func solution(_ numbers:String) -> Int {
    var answer = Set<Int>()
    let numbers = Array(numbers)
    let maxNum = Int(pow(10.0, Float(numbers.count)))
    var prime = Array(repeating: true, count: maxNum)
    prime[0] = false
    prime[1] = false
    
    for i in 2...Int(sqrt(Double(maxNum))) {
        if !prime[i] { continue }
        for j in stride(from: i * i, to: maxNum, by: i) {
            prime[j] = false
        }
    }
    
    var visited = Array(repeating: false, count: numbers.count)
    
    func recur(_ value: String, _ count: Int) {
        if count > numbers.count { return }
        
        if let intValue = Int(value), prime[intValue] {
            answer.insert(intValue)
        }
        
        for i in 0..<numbers.count {
            if visited[i] { continue }
            visited[i] = true
            recur(value + String(numbers[i]), count + 1)
            visited[i] = false
        }
        
    }
    
    recur("", 0)
    
    return answer.count
}