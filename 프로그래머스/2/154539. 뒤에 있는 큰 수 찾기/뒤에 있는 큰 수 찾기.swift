import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let count = numbers.count
    
    // [i][0] = 뒷 큰수, [i][1] = 다음으로 큰 수의 인덱스
    var answer = Array(repeating: Array(repeating: -1, count: 2), count: count)
    
    for i in stride(from: count - 2, through: 0, by: -1) {
        let current = numbers[i]
        var nextIndex = i + 1
        
        while nextIndex != -1 {   
            if current < numbers[nextIndex] {
                answer[i][0] = numbers[nextIndex]
                answer[i][1] = nextIndex
                break
            } else {
                nextIndex = answer[nextIndex][1]    
            }
        }
    }
    
    return answer.map { $0[0] }
}

/*
1. 배열의 원소를 모두 -1로 채움
2. 배열의 맨 끝의 다음부터 자신과 다음 배열의 크기를 비교해서 큰 수를 채움
2-1. numbers[i + 1]과 비교 후 뒷 큰수라면 채우고
2-2. numbers[i + 1]이 numbers[i]보다 작다면 answer에서 뒷 큰수를 찾아야 함

*/