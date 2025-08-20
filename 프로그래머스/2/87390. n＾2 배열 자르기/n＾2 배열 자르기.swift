import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer = [Int]()
    
    for i in left...right {    
        answer.append(Int(max((i / Int64(n)), i % Int64(n)) + 1))
    }
    
    return answer
}

/*
1 (1)
12 22 (4)
123 223 333 (9)
(0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2), (2, 0), (2, 1), (2, 2)
1234 2234 3334 4444 (16)
12345 22345 33345 44445 55555 (25)

-> left와 right이 어떤 제곱수 사이인지 알아야 함
*/