import Foundation 

var num = Int(readLine()!)!
var arr = [Int]()
for i in 2...num {
    if num < 2 {break}
    if i * i > num {
        arr.append(num)
        break
    }
    while(num % i == 0){
        arr.append(i)
        num /= i
    }
}
print(arr.count)
print(arr.map{String($0)}.joined(separator : " "))