import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var len = num_list.count / n
    var list = num_list
    var answer : [[Int]] = []
    
    for _ in 1...len{
        answer.append(Array(list.prefix(n)))
        for _ in 1...n{
            list.removeFirst()
        }

    }
    return answer
}