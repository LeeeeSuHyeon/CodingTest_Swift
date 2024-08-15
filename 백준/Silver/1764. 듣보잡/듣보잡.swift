import Foundation

let input = readLine()!.split(separator : " ").map{Int($0)!}
var dic = [String : Bool]()
var count = 0
for _ in 0..<input[0] {
    let name = readLine()!
    dic[name] = false
}

for _ in 0..<input[1]{
    let name = readLine()!
    if dic[name] != nil {
        dic[name] = true
        count += 1
    }
}

print(count)
for key in dic.keys.sorted() {
    let tf = dic[key] ?? false
    if tf {
        print(key)
    }
}