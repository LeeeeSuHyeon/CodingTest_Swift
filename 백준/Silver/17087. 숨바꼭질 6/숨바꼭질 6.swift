let NS = readLine()!.split(separator: " ").map{Int($0)!}
let (N, S) = (NS[0], NS[1]) // N: 동생 수, S: 수빈 위치

var A = readLine()!.split(separator:  " ").map{Int($0)!} // 동생들 위치

A = A.map{abs($0 - S)} // 수빈이가 이동해야 할 거리 (수빈 위치와 동생들 위치의 차)


// 유클리드 알고리즘
func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}


func recur(index: Int, value: Int) {
    if index == N {
        print(value)
        return
    }
    
    recur(index: index + 1, value: gcd(value, A[index]))
}

recur(index: 0, value: A[0])
