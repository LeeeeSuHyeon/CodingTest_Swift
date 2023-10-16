func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var arr = [Int]()
    arr.append(a)
    arr.append(b)
    arr.sort()
    var answer : Int64 = 0
    for i in arr[0]...arr[1]{
        answer += Int64(i)
    }
    
    return answer
    
//      return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}
