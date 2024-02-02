let sc = Int(readLine()!)!
let sn = readLine()!.split(separator : " ").map{Int(String($0))!}.sorted()
let m = Int(readLine()!)!
let mn = readLine()!.split(separator : " ").map{Int(String($0))!}

var dic = [Int : Int]()
var answer = [Int]()

for s in sn {
    if dic.keys.contains(s) {
        dic[s]! += 1
    }
    else {dic[s] = 1}
}

for m in mn {
    if dic.keys.contains(m) {
        answer.append(dic[m]!)
    }
    else {
        answer.append(0)
    }
}


print(answer.map{String($0)}.joined(separator: " "))