class Deque {
    var queue = [Int]()
    
    func push_front(_ n : Int){
        queue.insert(n, at: 0)
    }
    
    func push_back(_ n : Int){
        queue.append(n)
    }
    
    func pop_front() -> Int {
        return queue.isEmpty ? -1 : queue.removeFirst()
    }
    
    func pop_back() -> Int {
        return queue.isEmpty ? -1 : queue.removeLast()
    }
    
    func size() -> Int {
        return queue.count
    }
    
    func empty() -> Int {
        return queue.isEmpty ? 1 : 0
    }
    
    func front() -> Int {
        return queue.isEmpty ? -1 : queue[0]
    }
    
    func back() -> Int {
        return queue.isEmpty ? -1 : queue.last!
    }
}


let n = Int(readLine()!)!
var queue = Deque()

for _ in 0..<n {
    let input = readLine()!.split(separator : " ")
    
    switch input[0] {
        case "push_front" :
            queue.push_front(Int(input[1])!)
        case "push_back" :
            queue.push_back(Int(input[1])!)
        case "pop_front" :
            print(queue.pop_front())
        case "pop_back" :
            print(queue.pop_back())
        case "size" :
            print(queue.size())
        case "empty" :
            print(queue.empty())
        case "front" :
            print(queue.front())
        case "back" :
            print(queue.back())
        default :
            break
    }
}

