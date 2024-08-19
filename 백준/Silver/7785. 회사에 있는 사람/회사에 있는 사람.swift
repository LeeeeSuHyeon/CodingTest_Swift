import Foundation 

let input = Int(readLine()!)!
var dic = [String : Bool]()

for _ in 0..<input {
    let input = readLine()!.split(separator : " ").map{String($0)}
    if input[1] == "enter"{
        dic[input[0]] = true
    } else { dic[input[0]] = false }
}
for (key, value) in dic.sorted{$0.0 > $1.0} {
    if value {
        print(key)
    }
}