import Foundation

func solution(_ n:Int) -> Int {

    return (1...10).filter{i in (1...i).reduce(1, *) <= n}.sorted(by: >)[0]
}