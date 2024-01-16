func solution(_ n:Int) -> Int {
    var a = 2
    var b = 3
    var answer = 0
    if n < 4 {return n }
    for i in 4...n{
        answer = (a + b) % 1234567
        a = b
        b = answer 
    }
    
    return answer 
}
