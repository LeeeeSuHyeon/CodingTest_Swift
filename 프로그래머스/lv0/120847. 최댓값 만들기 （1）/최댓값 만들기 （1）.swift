import Foundation

func solution(_ numbers:[Int]) -> Int {
    var new_numbers = numbers.sorted(by: >)
    return new_numbers[0] * new_numbers[1]
}