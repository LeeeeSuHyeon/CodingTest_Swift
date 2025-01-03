func gcd(_ a: Int, b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, b: a % b)
}


let t = Int(readLine()!)!

for _ in 0..<t {
    let testCase = readLine()!.split(separator: " ").map{Int($0)!}
    let n = testCase[0]
    
    var answer = 0 // GCD의 합
    for i in 1...n-1 {
        for j in i+1...n {
            answer += gcd(testCase[i], b: testCase[j])
        }
    }
    print(answer)
}
