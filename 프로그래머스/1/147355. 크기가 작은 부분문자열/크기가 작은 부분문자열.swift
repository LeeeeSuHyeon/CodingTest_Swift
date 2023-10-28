import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var len = p.count
    var tt = t
    var answer = 0
    for _ in (0...t.count-len){
        answer = tt.prefix(p.count) <= p ?  answer+1 : answer
        tt.removeFirst()
    }
    return answer
}