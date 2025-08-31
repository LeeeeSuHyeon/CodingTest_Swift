func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var str = ""
    for i in 0..<t*m {
        str += String(i, radix: n)
    }
    
    var turn = p - 1
    var answer = ""
    while answer.count < t {
        let index = str.index(str.startIndex, offsetBy: turn)
        answer += String(str[index]).uppercased()
        turn += m
    }
    
    return answer
}

/*
1. t * m 개의 숫자를 미리 n진수로 바꾸어 구한 뒤
2. p 단위씩 모으기
*/