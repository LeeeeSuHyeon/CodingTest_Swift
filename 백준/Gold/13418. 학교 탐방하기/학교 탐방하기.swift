import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var lines = [[Int]]()
let firstLineCost = readLine()!.split(separator: " ").map{Int(String($0))!}[2] == 0 ? 1 : 0 // 입구와 1번 도로 간 오르막길 여부

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    lines.append(input)
}

let minCost = findCost(lines.sorted{$0[2] > $1[2]}) + firstLineCost // 최소 피로도
let maxCost = findCost(lines.sorted{$0[2] < $1[2]}) + firstLineCost // 최대 피로도

print(Int(pow(Double(maxCost), 2) - pow(Double(minCost), 2)))

func findCost(_ lines: [[Int]]) -> Int {
    var parent = Array(0...n)
    var cost = 0
    var edge = 0

    for line in lines {
        if findParent(&parent, line[0]) != findParent(&parent, line[1]) {
            union(&parent, line[0], line[1])
            if line[2] == 0 { cost += 1 }
            edge += 1
        }

        if edge == n - 1 {
           break
        }
    }
    return cost
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
