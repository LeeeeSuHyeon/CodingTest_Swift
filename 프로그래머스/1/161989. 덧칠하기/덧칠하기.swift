import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var len = 0
    var answer = 0
    
    for i in 0..<section.count {
        if(section[i] > len){
            answer += 1
            len = section[i] + m - 1
        }
    }
    return answer
}