import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var index = 0
    var onBridge = Array(repeating: 0, count: bridge_length)
    var currentTotalWeight = 0
    var answer = 0
    
    while !onBridge.isEmpty {
        answer += 1 // 1초 증가
        currentTotalWeight -= onBridge.removeLast()
        
        if onBridge.count < bridge_length, index < truck_weights.count {
            let next = truck_weights[index]
            if currentTotalWeight + next <= weight {
                currentTotalWeight += next
                onBridge = [next] + onBridge
                index += 1
            } else {
                onBridge = [0] + onBridge
            }
        }
    }
    
    return answer
}

/*

1. bridge_length 크기의 배열 onBridge
2. 다리 위에 있는 트럭의 개수는 bridge_length보다 작으며 총 무게의 합은 weight 이하여야 함
3. onBridge.count가 bridge_length보다 작으며, 현재 트럭 무게가 남은 트럭보다 작으면 다리 위에 올리기
4. onBridge > bridge_length이면 removeLast()

*/