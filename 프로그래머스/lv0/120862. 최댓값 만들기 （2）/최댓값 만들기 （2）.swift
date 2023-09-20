import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortedNumbers = numbers.sorted()
    let count = sortedNumbers.count
    
    return sortedNumbers[0] * sortedNumbers[1] > sortedNumbers[count-2] * sortedNumbers[count-1] ? sortedNumbers[0] * sortedNumbers[1] :  sortedNumbers[count-2] * sortedNumbers[count-1]
}