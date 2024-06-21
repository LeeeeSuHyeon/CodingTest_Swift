import Foundation
let arr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var input = String(readLine()!)

for i in arr {
    input = input.replacingOccurrences(of : i, with: " ")
}
print(input.count)

