import Foundation 
let alpha = "abcdefghijklmnopqrstuvwxyz"
let str = String(readLine()!).map{$0}
var answer = [String]()
alpha.map{
    answer.append(String(str.firstIndex(of : $0) ?? -1))
}
print(answer.joined(separator : " "))

