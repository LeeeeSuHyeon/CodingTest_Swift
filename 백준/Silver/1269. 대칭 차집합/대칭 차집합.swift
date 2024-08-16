import Foundation

let input = readLine()!.split(separator : " ").map{Int($0)!}.reduce(0, +)
var dic = [String : Bool]()
var count = 0

let _ = readLine()!.split(separator : " ").map {
    dic[String($0)] = false
}

let _ = readLine()!.split(separator : " ").map {
    if dic[String($0)] != nil {
        dic[String($0)] = true
        count += 1
    }
}
print(input - 2 * count)