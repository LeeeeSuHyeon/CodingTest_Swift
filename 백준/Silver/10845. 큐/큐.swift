class Queue<T> {
    
    var queue : [T] = []
    
    func push(_ n : T) {
        queue.append(n)
    }

    func pop() {
        print(queue.isEmpty ? -1 : queue.removeFirst())
    }

    func size(){
        print(queue.count)
    }

    func empty(){
        print(queue.isEmpty ? 1 : 0)
    }

    func front(){
        print(queue.isEmpty ? -1 : queue.first!)
    }

    func back(){
        print(queue.isEmpty ? -1 : queue.last!)
    }
}

let num = Int(readLine()!)!
var queue = Queue<Int>()
for _ in 0..<num {
    let order = readLine()!.split(separator : " ")
    switch order[0]{
        case "push" :
            queue.push(Int(order[1])!)
        case "pop" :
            queue.pop()
        case "size" :
            queue.size()
        case "empty" :
            queue.empty()
        case "front" :
            queue.front()
        case "back" :
            queue.back()
        default :
            break
    }
}