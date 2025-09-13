import Foundation

func solution(_ numbers:String) -> Int {
    var answer = Set<Int>()
    let numbers = Array(numbers)
    
    func isPrime(_ number: Int) -> Bool {
        guard number > 1 else { return false }

        for i in 2..<number where number % i == 0 {
            return false
        }
        
        return true
    }

    var visited = Array(repeating: false, count: numbers.count)
    
    func recur(_ value: String, _ count: Int) {
        if count > numbers.count { return }
        
        if let intValue = Int(value), isPrime(intValue) {
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