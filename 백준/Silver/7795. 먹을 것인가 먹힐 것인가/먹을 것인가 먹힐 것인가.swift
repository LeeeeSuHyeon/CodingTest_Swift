let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (N, M) = (input[0], input[1])
    let A = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    let B = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)

    var count = 0
    for i in 0..<N {
        var startB = 0
        for j in startB..<M {
            if A[i] > B[j] {
                count += 1
            } else {
                startB += 1
            }
        }
    }
    print(count)

}

