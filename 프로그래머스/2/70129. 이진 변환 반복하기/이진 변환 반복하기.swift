import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var count = 0
    var repeaT = 0
    
    
    while (s != "1"){
        count += s.count
        s = s.filter{$0 == "1"}
        count -= s.count
        s = String(s.count, radix: 2)
        print(s)
        repeaT += 1
    }
    
    return [repeaT, count]
}