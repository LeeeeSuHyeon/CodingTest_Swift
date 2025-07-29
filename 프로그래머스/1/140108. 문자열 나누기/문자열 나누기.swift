import Foundation

func solution(_ s:String) -> Int {
    var arr = s.map { $0 }
    var answer = 0
    var current = arr[0]
    var count = 1
    var otherCount = 0
    var flag = false

    for i in 1..<arr.count {
        if flag {
            flag = false
            continue 
        }
        
        if current == arr[i] {
            count += 1
        } else {
            otherCount += 1
        }
        
        
        if count == otherCount {
            answer += 1
            count = 0
            otherCount = 0
            flag = true

            if i + 1 < arr.count {
                current = arr[i + 1]   
                count = 1
            }
        }
    }

    if !(count == 0 && otherCount == 0) {
        answer += 1
    }
    return answer
}