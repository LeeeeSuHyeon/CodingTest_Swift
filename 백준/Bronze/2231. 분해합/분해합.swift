import Foundation 

let input = Int(String(readLine()!))!
var found = false
for i in 1...input {
    if input == String(i).map{$0}.map{Int(String($0))!}.reduce(i, +) {
        print(i)
        found = true
        break
    }
}

if !found {
    print(0)
}
