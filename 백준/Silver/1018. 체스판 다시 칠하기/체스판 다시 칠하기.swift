let NM = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (NM[0], NM[1])
var arr = [[String]]()
var answer = Int.max

for _ in 0..<N {
    arr.append(readLine()!.map{String($0)})
}

for y in 0...N - 8 { // 시작점으로 사용할 수 있는 y값
    for x in 0...M - 8 { // 시작점으로 사용할 수 있는 x값
        let count = min(checkCount(x: x, y: y, base: "B"), checkCount(x: x, y: y, base: "W"))
        answer = min(answer, count)
    }
}
print(answer)

func checkCount(x : Int, y : Int, base : String) -> Int {
    var base = base
    var count = 0
    var copyArr = arr
    for i in y..<y + 8 {
        for j in x..<x + 8 {
            if i == y && j == x {
                if !(copyArr[i][j] == base) {
                    copyArr[i][j] = base
                    count += 1
                }
                
            } else {
                if copyArr[i][j] == base {
                    copyArr[i][j] = base == "B" ? "W" : "B"
                    base = copyArr[i][j]
                    count += 1
                } else {
                    base = base == "B" ? "W" : "B"
                }
            }
        }
        base = base == "B" ? "W" : "B"
    }
    return count
}
