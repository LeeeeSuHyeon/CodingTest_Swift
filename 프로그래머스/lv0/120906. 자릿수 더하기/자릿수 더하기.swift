import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    
    var strN = String(n)
    for n in strN {
        sum += Int(String(n)) ?? 0
    }
    return sum
}
