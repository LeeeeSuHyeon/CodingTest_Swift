let num = Int(readLine()!)!

for _ in 1...num {
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
    var queue = readLine()!.split(separator: " ").map{Int(String($0))!}
    var count = 0
    var index = nm[1]
    while true{
        if queue[0] == queue.max(){
            queue.removeFirst()
            count += 1
            if index == 0 {
                print(count)
                break
            }
            else{
                index -= 1
            }
        } else{
            queue.append(queue.removeFirst())
            index = index == 0 ? index + queue.count - 1 : index - 1
        }
        
    }
}