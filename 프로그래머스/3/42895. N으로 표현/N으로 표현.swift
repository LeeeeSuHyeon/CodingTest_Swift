import Foundation

func solution(_ N:Int, _ number:Int) -> Int {
    if N == number { return 1 }
    
    var dp = [Int: Set<Int>]()
    dp[1] = [N]
    
    for i in 2...8 {
        var current = Set<Int>()
        
        let num = Int(String(repeating: "\(N)", count: i))!
        current.insert(num)
        
        for j in 1..<i {
            for x in dp[j]! {
                for y in dp[i-j]! {
                    current.insert(x + y)
                    current.insert(x - y)
                    current.insert(y - x)
                    current.insert(x * y)
                    if y != 0 { current.insert(x / y) }
                    if x != 0 { current.insert(y / x) }
                }
            }
        }
        
        dp[i] = current
        
        if current.contains(number) { return i }
    }

    return -1
}