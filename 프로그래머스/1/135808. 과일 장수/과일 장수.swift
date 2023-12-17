import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var sc = score.sorted(by : >)
    var answer = 0
    for i in 0..<(score.count / m) {
        var box = sc[i * m..<(m + i * m)]
        answer += box.sorted()[0] * m
    }
    
    return answer
}