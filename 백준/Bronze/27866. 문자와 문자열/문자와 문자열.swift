import Foundation
let char = String(readLine()!)
let num = Int(readLine()!)! - 1
let arr = char.map{$0}
print(arr[num])