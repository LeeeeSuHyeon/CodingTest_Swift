import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    // numbers.map{$0 + $1}
    var answer = [Int]()
    for i in 0..<numbers.count-1{
        for j in i+1..<numbers.count{
         answer.append(numbers[i] + numbers[j])   
        }
    }
    return Array(Set(answer)).sorted()
}