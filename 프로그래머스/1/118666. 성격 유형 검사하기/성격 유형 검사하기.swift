import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let survey = survey.map { $0.map { String ($0) } }
    var count = [String: Int]()
    var answer = ""
    
    for i in 0..<survey.count {
        let score = choices[i] 
        if score < 4 {
            count[survey[i][0], default: 0] += abs(score - 4)
        } else if score > 4 {
            count[survey[i][1], default: 0] += abs(score - 4)
        }
    }
    
    for nature in [["R", "T"], ["C", "F"], ["J", "M"], ["A", "N"]] {
        let nature = nature.sorted()
        answer += count[nature[0]] ?? 0 >= count[nature[1]] ?? 0 ? nature[0] : nature[1]
    }

    return answer
}



/*
단, 하나의 지표에서 각 성격 유형 점수가 같으면, 
두 성격 유형 중 사전 순으로 빠른 성격 유형을 검사자의 성격 유형이라고 판단

var count = [(R: 0, T: 0), (C: 0, F: 0), (R: 0, T: 0), (C: 0, F: 0)]
or
var count = [String: Int]
*/