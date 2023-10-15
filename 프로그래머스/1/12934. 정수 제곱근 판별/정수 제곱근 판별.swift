import Foundation

func solution(_ n:Int64) -> Int64 {
    
    var num = Int(sqrt(Double(n)))
    
    
    return Int64(num * num == n ? (num+1) * (num+1) : -1)
    
}