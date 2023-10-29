func solution(_ s:String) -> String {
    var count = 2
    var arr = s.split(separator :" ", omittingEmptySubsequences: false)
    var answer = ""
    for i in arr{
        for j in i{
            answer += count % 2 == 0 ? j.uppercased() : j.lowercased()
            count += 1
        }
        answer += " "
        count = 2
    }
    answer.popLast()
    
    return answer
}