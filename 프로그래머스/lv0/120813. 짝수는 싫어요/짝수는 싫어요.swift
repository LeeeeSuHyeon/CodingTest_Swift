import Foundation

func solution(_ n:Int) -> [Int] {
    var arr : [Int] = []
    for i in 0...n{
        arr.append(i)
    }
    return arr.filter{$0 % 2 == 1}
}

// (0...n).filter{$0 % 2 == 1}