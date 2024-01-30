class Queue<T> {
    var enQueue : [T]
    var deQueue : [T] = []
    
    init(_ queue: [T]){
        self.enQueue = queue
    }
    
    var count : Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty : Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    func push(_ element : T) {
        enQueue.append(element)
    }
    
    func pop() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }
}

let num = Int(readLine()!)!
var arr = Array(1...num)
var queue = Queue<Int>(arr)

while queue.count != 1 {
    let _ = queue.pop()
    queue.push(queue.pop())
}
print(queue.pop())










//let num = Int(readLine()!)!
//var arr = [Int]()
//for i in stride(from: 2, to : num, by : 2) {
//    arr.append(i)
//}
//while arr.count != 1 {
//    arr.remove(at : 0)
//    arr.append(arr[0])
//    arr.remove(at : 0)
//}
//print(arr[0])
