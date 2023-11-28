import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    var charIndex: [Character: Int] = [:]

    for (index, char) in s.enumerated() {
        if let previousIndex = charIndex[char] {
            result.append(index - previousIndex)
        } else {
            result.append(-1)
        }

        charIndex[char] = index
    }

    return result
}