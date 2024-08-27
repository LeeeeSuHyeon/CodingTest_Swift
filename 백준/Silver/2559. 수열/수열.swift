import Foundation
let input = readLine()!.split(separator : " ").map{Int($0)!}
let (N, K) = (input[0], input[1])
let temp = readLine()!.split(separator : " ").map{Int($0)!}
var prefixArr = [Int](repeating : 0, count : N + 1)
var answer = [Int]()
for i in 0..<N {
    prefixArr[i + 1] = prefixArr[i] + temp [i]
}
for i in K...N { 
    answer.append(prefixArr[i] - prefixArr[i - K])
}

print(answer.sorted(by : >)[0])