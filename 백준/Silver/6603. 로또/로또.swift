var target = [String]()
func recur(_ index : Int, _ arr : [String]) {
    if index == Int(target[0])! {
        if arr.count == 6 {
            print(arr.joined(separator: " "))
        }
        return
    }
    recur(index + 1, arr + [target[index + 1]])
    recur(index + 1, arr)
}

while true {
    target = readLine()!.split(separator: " ").map{String($0)}
    if Int(target[0])! == 0 { break }
    else {
        recur(0, [])
    }
    print()
    
}