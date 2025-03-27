import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var periods = Array(repeating: 0, count: progresses.count)
    for i in progresses.indices {
        periods[i] = Int(ceil(Double(100 - progresses[i]) / Double(speeds[i])))
    }
    
    var queue = Queue(periods)
    var firstPeriod = queue.dequeue()!
    var count = 1
    var answer = [Int]()
    
    while !queue.isEmpty {
        let num = queue.dequeue()!
        if firstPeriod >= num { 
            count += 1
            continue
        } else {
            answer.append(count)
            firstPeriod = num
            count = 1
        }
    }
    
    answer.append(count)
    
    return answer
}


struct Queue {
    private var inStack: [Int]
    private var outStack = [Int]()
    
    init(_ nums: [Int]) {
        inStack = nums
    }
    
    var isEmpty: Bool {
        inStack.isEmpty && outStack.isEmpty
    }
    
    mutating func enqueue(_ num: Int) {
        inStack.append(num)
    }
    
    mutating func dequeue() -> Int? {
        if outStack.isEmpty {
            outStack = inStack.reversed()
            inStack = []
        }
        
        return outStack.popLast()
    }
}

/*
1. 뒤에 있는 기능은 앞에 있는 기능보다 먼저 개발되어도 앞에 있는 기능이 배포될 때 같이 배포된다
-> 앞 기능이 무조건 먼저 나간다 (FIFO) -> 큐 사용

2. periods: 각 작업이 완료될 때까지 필요한 기간을 나타내는 배열 
ex) 
progresses: [93, 30, 55]
speeds: [1, 30, 5]
periods: [7, 3, 9] -> 100 <= progress + speed * x

        100 <= progresses[i] + speeds[i] * x
        100 - progresses[i] <= speeds[i] * x
        (100 - progresses[i]) / speeds[i] <= x

3. periods를 pop하면 처음 period가 나옴
- 이후 pop 하면서 처음 period보다 작거나 같으면 계속 Pop ( count + 1)
- 큰 값이 pop 되면 answer 배열에 count insert
- queue가 빌 때까지 반복
*/


