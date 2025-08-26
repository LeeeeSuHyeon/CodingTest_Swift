import Foundation

func solution(_ topping:[Int]) -> Int {
    guard topping.count != 1 else { return 0 }
    
    var answer = 0
    var leftTopping =  [Int: Int]()
    var rightTopping = [Int: Int]()
    
    topping.forEach { rightTopping[$0, default: 0] += 1 }
    
    topping.forEach {
        rightTopping[$0]! -= 1
        if rightTopping[$0]! == 0 { rightTopping[$0] = nil }
        
        leftTopping[$0, default: 0] += 1
        if leftTopping.keys.count - rightTopping.keys.count == 0 {
            answer += 1
        }
    }
    
    return answer
}

/*
각 조각에 동일한 가짓수의 토핑이 올라가면 공평하게 롤케이크가 나누어진 것
롤케이크를 공평하게 자르는 방법의 수를 return

일단, 토핑 종류 수가 홀수면 0?
첫 번째 방법
- 투포인터를 사용해서 배열의 양 끝에서 시작하고, 왼쪽과 오른쪽 중 종류가 추가되면 반대가 움직이는 방법
- 한 가지 방법 밖에 구할 수 없음

두 번째 방법 
- topping의 길이만큼 배열 생성
- 각 인덱스에 왼쪽의 토핑 개수 만큼 +1, 오른쪽의 토핑 개수 만큼 -1 -> 합이 0이면 공평한 것
- 마지막의 0의 개수를 구하면 정답
*/