import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var answer = 0
    var rest = n
    repeat{
        var coke = rest / a * b
        answer += coke
        rest = rest % a + coke
    }while(rest >= a)
    
    return answer
}