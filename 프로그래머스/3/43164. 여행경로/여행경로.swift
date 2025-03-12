import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var dic: [String: [String]] = [:] // 딕셔너리 정의: [출발지: [도착지]]
    
    for ticket in tickets {
        let start = ticket[0]
        let end = ticket[1]
        if dic[start] == nil {
            dic[start] = [end]
        } else {
            dic[start]?.append(end)
        }
    }
    
    dic = dic.mapValues { $0.sorted() }
    
    var visited: [String] = ["ICN"]
    
    func recur(_ current: String) -> [String] {
        if visited.count > tickets.count {
            return visited
        }
        
        guard let nexts = dic[current] else { return [] }

        for next in nexts {
            visited.append(next)
            dic[current]?.removeFirst()
            let answer = recur(next)
            
            if !answer.isEmpty {
                return answer
            }
            
            visited.removeLast()
            dic[current]?.append(next)
        }

        return []
    }
    return recur("ICN")
}