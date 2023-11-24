import Foundation

func solution(_ n:Int) -> Int {
    var num = n

    return Int(String(String(num, radix : 3).reversed()), radix:3)!
}