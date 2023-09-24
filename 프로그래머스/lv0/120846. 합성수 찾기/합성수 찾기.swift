import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    for i in 1...n{
        if (((1...i).filter{i % $0 == 0}).count >= 3) {
            count += 1
        }
    }
    return count
}