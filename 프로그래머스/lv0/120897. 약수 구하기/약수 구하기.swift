import Foundation

func solution(_ n:Int) -> [Int] {
    // var answer : [Int] = []
    // for i in 1...n{
    //     if n % i == 0{
    //         answer.append(i)
    //     }
    // }
    // return answer
    
    return (1...n).filter{ n % $0 == 0}
}