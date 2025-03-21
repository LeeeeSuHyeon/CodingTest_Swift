import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.indices.map{($0, priorities[$0])}
    var answer = 1
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        guard let maxPriority = queue.map{$0.1}.max() else { break }
        if current.1 >= maxPriority {
            if current.0 == location { break }
            answer += 1
        } else {
            queue.append(current)
        }
    }
    
    return answer
}

/*
1. location에 있는 값을 다른 값들과 어떻게 구분할 것인지
    - 동일한 값을 가질 수 있음
-> 튜플을 이용해서 새로운 배열 생성 (처음 인덱스, 중요도)

2. 큐에서 하나씩 꺼냄
3. 우선순위가 제일 높은 지 확인
4. 제일 높으면 추출 및 location인지 확인 
5. 아니면, 삽입 

*/