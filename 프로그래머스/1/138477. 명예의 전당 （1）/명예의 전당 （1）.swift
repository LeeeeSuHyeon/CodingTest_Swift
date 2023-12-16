import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var honor = [Int]()
    var answer = [Int]()
    for sc in score {
        honor.append(sc)
        honor.sort()
        if(honor.count <= k){
            answer.append(honor[0])
        }
        else{
            honor.removeFirst()
            answer.append(honor[0])
        }
    }
    
    return answer
}