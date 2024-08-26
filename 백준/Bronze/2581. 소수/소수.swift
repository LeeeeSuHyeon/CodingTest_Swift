import Foundation

var dic = [Bool](repeating : true, count : 10001)
dic[1] = false
for i in 2...Int(sqrt(10000.0)) { // 2 ~ 100
    for j in i...(10000 / i) {    // i = 2 -> j = 2 ~ 5000
        dic[i * j] = false
    }
}

let start = Int(readLine()!)!
let end = Int(readLine()!)!
var sum = 0
var min = Int.max
for i in start...end {
    if dic[i] == true {
        sum += i
        if min > i {
            min = i
        }
    }
}
if sum == 0 {
    print(-1)
} else {
    print(sum)
    print(min)  
}

