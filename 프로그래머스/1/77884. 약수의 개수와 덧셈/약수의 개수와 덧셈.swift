import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var arr = (left...right).filter{i in (1...i).filter{ i % $0 == 0 }.count % 2 == 0}
    
    return (left...right).map{arr.contains($0) ? $0 : -$0}.reduce(0, +)
}
