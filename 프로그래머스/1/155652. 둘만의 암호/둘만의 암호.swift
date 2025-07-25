import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let s = s.map { Int($0.asciiValue!) }
    let skip = skip.map { Int($0.asciiValue!) }
    var answer = ""
    
    for ascii in s {
        var count = 0
        var current = ascii
        
        while count < index {
            current = convertAsciiRange(current + 1)
            if skip.contains(current) { 
                continue 
            }
            count += 1
        }
        
        answer += String(UnicodeScalar(convertAsciiRange(current))!)
    }
    
    return answer
}

func convertAsciiRange(_ ascii: Int) -> Int {
    return ascii > 122 ? ascii - 26 : ascii
}

/*
65 == A
90 == Z

97 == a
122 == z

1. maxAscii가 z를 넘어 a로 돌아갈 가능성
2. newAscii의 filter 조건식

*/