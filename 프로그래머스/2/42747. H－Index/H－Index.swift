import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var answer = 0
    var citations = citations.sorted(by: >)

    for i in 0..<citations.count {
        if(i >= citations[i]){
            return i
        }
    }
    return citations.count
}
