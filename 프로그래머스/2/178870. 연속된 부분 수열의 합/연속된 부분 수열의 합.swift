import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    let count = sequence.count
    var minDif = Int.max
    var answer = [Int]()
    var sum = Array(repeating: 0, count: count)
    sum[0] = sequence[0]
    
    for i in 1..<count {
        sum[i] = sum[i - 1] + sequence[i]
    }

    var left = 0
    var right = 0

    while left <= right, right < count {
        let sumL = left == 0 ? 0 : sum[left - 1]
        let current = sum[right] - sumL
        
        if current == k {
            if minDif > right - left {
                minDif = right - left
                answer = [left, right]
            }
        }
        
        if current < k {
            right += 1
        } else {
            left += 1
        }
    }
    
    return answer
}


/* 1300 ~

누적합
5 - 7까지의 수열의 합은
sum[7] - sum[4]

i ~ j까지의 수열의 합은
sum[j] - sum[i]

*/