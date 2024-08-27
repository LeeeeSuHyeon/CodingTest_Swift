import Foundation
let input = Int(readLine()!)!
let arr = readLine()!.split(separator : " ").map{Int($0)!}
var prefixArr = [Int](repeating : 0, count : input + 1)

for i in 0..<input {
    prefixArr[i + 1] = max(prefixArr[i] + arr[i], arr[i])
}
prefixArr.remove(at : 0)
print(prefixArr.max() ?? 0)