import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = [Int]()
    for i in 0..<nums.count-2 { // 012
        for j in i+1..<nums.count-1{ // i 0-123, 1-23, 2-3
            for k in j+1..<nums.count{ // j 1-234, 2-34, 3-4
                answer.append(nums[i] + nums[j] + nums[k])
            }
        }   
    }
    return answer.filter {i in 
        (2...Int(sqrt(Double(i)))).filter{  // 에라토스테네스의 체
            i % $0 == 0
        }.count == 0
    }.count
}