import Foundation

func solution(_ order:[Int]) -> Int {
    var order = order
    var index = 0
    var assist = Array(1..<order.first!)
    var answer = 0

    for i in order[0]...order.count {
        var flag = true
        if i == order[index] {
            index += 1
            answer += 1
            flag = false
        }
        
        while let assistNum = assist.last, order[index] == assistNum {
            assist.removeLast()
            index += 1
            answer += 1
            flag = false
        }
        
        if flag { assist.append(i) }
    }
    
    return answer
}

/* 11:15

- 보조 컨테이너는 스택 (선입 선출)

1. order의 첫 번째 수까지의 수를 assist 배열에 넣음
    - order의 첫 번째 수: 4
    - assist: [1, 2, 3]
2. order의 다음 수 3

*/