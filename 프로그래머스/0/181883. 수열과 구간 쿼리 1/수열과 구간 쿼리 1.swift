import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer = arr
    for query in queries {
        for i in query[0]...query[1]{
            answer[i] += 1
        }
	}
    return answer
}
