//
//  main.swift
//  CodingTest
//
//  Created by 이수현 on 4/5/25.
//

import Foundation

let N = Int(readLine()!)!
var basicArray = [[String]]()
var colorWeaknessArray = [[String]]()


for _ in 0..<N {
    let input = readLine()!
    let colorWeakness = input.replacingOccurrences(of: "G", with: "R")
    basicArray.append(input.map{String($0)})
    colorWeaknessArray.append(colorWeakness.map{String($0)})
}

print(solution(isColorWeakness: false), solution(isColorWeakness: true))

func solution(isColorWeakness: Bool) -> Int{
    let arr = isColorWeakness ? colorWeaknessArray : basicArray
    var visited = Array(repeating: Array(repeating: false, count: N), count: N)
    var count = 0
    
    func dfs(_ y: Int, _ x: Int, _ color: String) {
        visited[y][x] = true
        
        let directions =  [[0, 1], [1, 0], [0, -1], [-1, 0]]
        for yx in directions {
            let (ey, ex) = (y + yx[0], x + yx[1])
            if ey >= 0, ey < N, ex >= 0, ex < N {
                if !visited[ey][ex] && arr[ey][ex] == color {
                    dfs(ey, ex, color)
                }
            }
        }
    }
    
    
    for y in 0..<N {
        for x in 0..<N {
            if visited[y][x] { continue }
            dfs(y, x, arr[y][x])
            count += 1
        }
    }
    return count
}
