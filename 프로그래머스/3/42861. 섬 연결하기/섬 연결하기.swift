import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    let sortedCosts = costs.sorted { $0[2] < $1[2] }
    var parent = [Int](0..<n)
    
    var answer = 0
    var edgeCount = 0
    
    for cost in sortedCosts {
        let from = cost[0]
        let to = cost[1]
        let weight = cost[2]
        
        if findParent(&parent, from) != findParent(&parent, to) {
            union(&parent, from, to)
            answer += weight
            edgeCount += 1
            
            if edgeCount == n - 1 {
                break
            }
        }
    }
    
    return answer
}

func findParent(_ parent: inout [Int], _ node: Int) -> Int {
    if parent[node] != node { 
        parent[node] = findParent(&parent, parent[node])
    }
    return parent[node]
}

func union(_ parent: inout [Int], _ a: Int, _ b: Int) {
    let rootA = findParent(&parent, a)
    let rootB = findParent(&parent, b)
    
    if rootA < rootB {
        parent[rootB] = rootA
    } else {
        parent[rootA] = rootB
    }
}