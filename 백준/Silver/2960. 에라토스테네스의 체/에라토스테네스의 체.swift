let NK = readLine()!.split(separator: " ").map{Int($0)!}
let (N, K) = (NK[0], NK[1])
var primeNums = Array(repeating: true, count: N + 1)
var count = 0
var answer = 0
var flag = false
primeNums[0] = false
primeNums[1] = false
for i in 2...N {
    for j in stride(from: i, through: N, by: i) {
        if !primeNums[j] {continue}
        primeNums[j] = false
        count += 1
        answer = j
        if count == K {
            print(j)
            flag = true
            break
        }
    }
    if flag {
        break
    }
}
