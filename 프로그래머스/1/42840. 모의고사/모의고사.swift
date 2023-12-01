import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let a = [1,2,3,4,5]
    let b = [2,1,2,3,2,4,2,5]
    let c = [3,3,1,1,2,2,4,4,5,5]
    var a_c = 0
    var b_c = 0
    var c_c = 0
    var answer = [Int]()
    
    for i in 0..<answers.count{
        a_c += answers[i] == a[i % a.count] ? 1 : 0
        b_c += answers[i] == b[i % b.count] ? 1 : 0
        c_c += answers[i] == c[i % c.count] ? 1 : 0
    }
    var m = max(a_c, b_c, c_c)
    if (m == a_c){
        answer.append(1)
    } 
    if (m == b_c){
        answer.append(2)
    }
    if(m == c_c){
        answer.append(3)
    }
    
    
    return answer
}