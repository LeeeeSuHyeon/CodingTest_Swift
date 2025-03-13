import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer = [Int]()
    
    for query in queries {
        let value = arr[query[0]...query[1]].filter{$0 > query[2]}.min()
        answer.append(value ?? -1)
    }
    return answer
}