let N = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<N {
    let xy = readLine()!.split(separator: " ").map{Int($0)!}
    let (x, y) = (xy[0], xy[1])
    arr.append([x, y])
}

let sortedArr = arr.sorted(by: {
    if $0[0] == $1[0] {
        return $0[1] < $1[1]
    } else {
        return $0[0] < $1[0]
    }
})

for answer in sortedArr {
    print("\(answer[0]) \(answer[1])")
}
