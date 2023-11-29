import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer : [Int] = []
    for command in commands{
        var arr : [Int] = []
        for i in command[0]-1..<command[1]{
            arr.append(array[i])
        }
        arr.sort()
        answer.append(arr[command[2]-1])
    }
    return answer
}