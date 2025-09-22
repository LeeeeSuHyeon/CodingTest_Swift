import Foundation

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    return max(findAnswer(arrayA, arrayB), findAnswer(arrayB, arrayA))
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func findAnswer(_ arrayA: [Int], _ arrayB: [Int]) -> Int {
    let sortedArrayA = arrayA.sorted()
    let (maxNumA, minNumA) = (sortedArrayA.last!, sortedArrayA.first!)
    var answer = 0
    
    let gcdA = gcd(maxNumA, minNumA)
    
    for num in stride(from: gcdA, through: 2, by: -1) { 
        if gcdA % num == 0, arrayB.allSatisfy({$0 % num != 0 }), arrayA.allSatisfy({$0 % num == 0 }) {
            answer = num
            break
        }
    }

    return answer
}


/* 1105 ~ 

1. 하나의 배열을 정렬 -> 가장 큰 수와 작은 수의 최대 공약수를 구함
- 모든 원소로 나누어지지 않을 수 있음
2. 최대 공약수의 약수를 다른 배열로 나누면서, 하나도 나눠지지 않는 공약수의 최대값을 구하면 됨

*/