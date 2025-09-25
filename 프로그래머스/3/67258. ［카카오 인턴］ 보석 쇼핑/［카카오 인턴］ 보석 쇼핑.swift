import Foundation

func solution(_ gems:[String]) -> [Int] {
    let gemsKind = Set(gems)
    var gemsCount = [String: Int]()
    var answer = [0, 100_000]
    var left = 0
    var right = 0
    
    while left <= gems.count, right <= gems.count {
        
        if gemsCount.values.count == gemsKind.count {
            if answer[1] - answer[0] > right - left {
                answer = [left, right]
            }
            
            gemsCount[gems[left]]! -= 1
            if gemsCount[gems[left]] == 0 { gemsCount[gems[left]] = nil }
            left += 1
        } else {
            if right == gems.count { break }
            gemsCount[gems[right], default: 0] += 1
            right += 1
        }

    }
    return [answer[0] + 1, answer[1]]
}

/* 1110

1. 투포인터 이용
2. 구간의 보석들이 모두 포함되면 left += 1
3. 보석이 포함되지 않으면 right += 1
4. 포함 될 떄마다 구간의 길이, left, right 구함

*/