import Foundation 

var row = 0
var column = 0
var max = 0

for i in 0..<9 {
    let nums = String(readLine()!).split(separator : " ").map{Int($0)!}
    let num = nums.max() ?? 0
    if num >= max {
        row = i 
        column = nums.firstIndex(of : num) ?? 0
        max = num
    }
}
print(max)
print("\(row + 1) \(column + 1)")