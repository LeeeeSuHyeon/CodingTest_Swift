let N = Int(readLine()!)!
var arr = [(Int, Int)]()

for _ in 0..<N {
    let xy = readLine()!.split(separator: " ").map{Int($0)!}
    let (x, y) = (xy[0], xy[1])
    arr.append((x, y))
}

arr.sort { first, second in
    if first.0 == second.0 {
        return first.1 < second.1
    } else {
        return first.0 < second.0
    }
}
for answer in arr {
    print("\(answer.0) \(answer.1)")
}
