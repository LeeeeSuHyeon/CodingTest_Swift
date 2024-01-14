import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var answer : [Int] = [0, 0]
    var list = [String]()
    list.append(words[0])
    
    for i in 1..<words.count {   
        if(!list.contains(words[i]) && Array(list[0])[list[0].count - 1] == Array(words[i])[0]){
            list.insert(words[i], at: 0)
        }
        else{
            break
        }
    }
    return list.count == words.count ? [0, 0] : [list.count % n + 1, list.count / n + 1]
}