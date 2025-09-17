import Foundation

func solution(_ weights:[Int]) -> Int64 {
    var answer: Int64 = 0
    var numberOfweights = [Double: Int]()
    
    weights.forEach { numberOfweights[Double($0), default: 0] += 1 }
    
    for (weight, count) in numberOfweights.sorted { $0.key > $1.key } {
        
        answer += Int64((count * (count - 1)) / 2) // 같은 수끼리의 쌍
                
        for ratio in [2.0 / 3.0, 3.0 / 4.0, 2.0 / 4.0] {
            let target = weight * ratio
            if let targetCount = numberOfweights[target] {
                answer += Int64(targetCount * count)    
            }
            
        }
    }

    return answer
}

/*

1. 최대공약수로 나눴을 때 두 수 모두 4이하면 가능

*/