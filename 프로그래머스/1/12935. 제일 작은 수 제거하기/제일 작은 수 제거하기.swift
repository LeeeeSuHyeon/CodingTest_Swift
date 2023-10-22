func solution(_ arr:[Int]) -> [Int] {
    var ar = arr.sorted()
    var answer = arr
    answer.remove(at: (arr.firstIndex(of: ar[0])!))
    return answer.isEmpty ? [-1] : answer
}