import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var visited = Array(repeating: false, count: words.count)
    var queue: [(String, Int)] = [(begin, 0)]
    var answer = 0
    
    while true {
        let (str, count) = queue.removeFirst()
        if str == target { 
            answer = count
            break 
        }
        
        for i in 0..<words.count {
            if visited[i] { continue } 
            
            var sameCount = 0
            zip(Array(str), Array(words[i])).forEach {
                if $0.0 == $0.1 { sameCount += 1}
            }
            
            if sameCount + 1 == begin.count {
                queue.append((words[i], count + 1))
                visited[i] = true
            }
        }
        
        if queue.isEmpty { break }
    }
    
    return answer
}