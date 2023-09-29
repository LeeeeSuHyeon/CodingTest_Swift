import Foundation

func solution(_ s:String) -> Int {
    // var A_s = s.split(separator: " ")
    // var sum = 0
    // var last = 0
    // for i in A_s{
    //     if i == "Z"{
    //         sum -= last
    //     }
    //     else{
    //         sum += Int(i) ?? 0
    //         last = Int(i) ?? 0
    //     }
    // }
    // return sum
    
        var stack = [Int]()
    
    for i in s.split(separator: " "){
        if i == "Z"{
            stack.popLast()
        }
        else{
            stack.append(Int(i) ?? 0)
        }
    }
    return stack.reduce(0, +)
}