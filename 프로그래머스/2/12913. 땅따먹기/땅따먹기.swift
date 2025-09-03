import Foundation

func solution(_ land:[[Int]]) -> Int {
    let lands = land
    var sum = Array(repeating: Array(repeating: 0, count: 4), count: lands.count)
    
    sum[0] = lands.first!
  
    for i in 1..<lands.count {
        for j in 0..<4 {
            for k in 0..<4 where j != k {
                sum[i][j] = max(sum[i][j], sum[i - 1][k] + land[i][j])
            }
        }
    }
    return sum.last!.max()!
}

/*
1. 각 행에서 가장 큰 값과 인덱스를 튜플로 가짐
2. 다음 행에서 이전 값의 인덱스와 다르면서 가장 큰 값을 가짐
-> 다음 행에 같은 인덱스의 값이 가장 클 때 오답이 됨

1. 각 행의 최대 개수는 100,000이니 4열을 완전탐색하면 시간초과
2. 같은 열을 연속해서 밟을 수 없다 -> 각 행의 큰 수 두개씩만 필요

*/