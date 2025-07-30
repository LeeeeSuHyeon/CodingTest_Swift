import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var answer = [Int]()
    let keymap = keymap.map { Array($0) }
    let maxNum = 101
    
    for target in targets {
        var totalCount = 0
        
        for str in target {
            let count = keymap.map { $0.firstIndex(of: str) ?? maxNum }.min()! + 1
            if count == maxNum + 1 {
                totalCount = 0
                break
            } else {
                totalCount += count
            }
            
        }
        
        answer.append(totalCount == 0 ? -1 : totalCount)
    }
    
    return answer
}


/*
1. keymap의 0번째 요소부터 모두 확인
*/