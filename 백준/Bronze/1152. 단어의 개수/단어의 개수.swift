import Foundation

let str = String(readLine()!).components(separatedBy : " ")
var count = 0
str.map{
    count = $0 == "" ? count+1 : count
}
print(str.count - count)