func solution(_ n:Int) -> Int {
    
    var f1 = 0
    var f2 = 1
    var k = 0
    for _ in 2...n{
        k = (f1 + f2) % 1234567
        f1 = f2 % 1234567
        f2 = k 
    }
    return  k
}