let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (N, M) = (input[0], input[1])
    let A = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let B = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    
    var aStart = 0
    var bStart = 0
    var count = 0
    
    while aStart < N && bStart < M {
        if A[aStart] > B[bStart] {
            count += N - aStart
            bStart += 1
        } else {
            aStart += 1
        }
    }
    print(count)
}
