import Foundation
let input = readLine()!
var dic = [String : Bool]()
var startIndex = input.startIndex // 0 
for i in 0..<input.count - 1 { // i = 0,1,2,3
    var lastIndex = startIndex // 0 
    dic[String(input[startIndex])] = true // dic[a] = true
    for _ in i+1..<input.count{  // i = 0 -> 1,2,3,4 | 1-> 2,3,4 | 2->3,4,| 3-> 4
        lastIndex = input.index(after : lastIndex)    // 1
        dic[String(input[startIndex...lastIndex])] = true // 0...1
    }
    startIndex = input.index(after : startIndex)
}
dic[String(input[startIndex])] = true
print(dic.count)