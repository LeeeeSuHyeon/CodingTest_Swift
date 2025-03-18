import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var answer = Int.max
    var strCount = begin.count
    var visited = Array(repeating: false, count: words.count)
    
    func recur(index: Int, value: String) {
        
        if value == target {
            answer = min(answer, index)
            return
        }
        
        for i in 0..<words.count {
            let word = words[i]
            var sameCount = 0
            for j in 0..<strCount {
                let valueIndex = value.index(value.startIndex, offsetBy: j)
                let wordIndex = word.index(word.startIndex, offsetBy: j)
                if value[valueIndex] == word[wordIndex] { sameCount += 1 }
            }
            
            if sameCount + 1 == strCount && !visited[i] {
                visited[i] = true
                recur(index: index + 1, value: word)
                visited[i] = false
            }
        }
    }
    
    recur(index: 0, value: begin)
    return answer == Int.max ? 0 : answer
}