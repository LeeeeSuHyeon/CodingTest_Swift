let XY = readLine()!.split(separator: " ").map{Int($0)!}
var (X, Y) = (XY[0], XY[1])
let Z = Int(Y * 100 / X)
var z = Z
var count = -1
var maxNum = 1000000000
var minNum = 1

while minNum <= maxNum {
    let mid = (maxNum + minNum) / 2
    let nX = X + mid
    let nY = Y + mid
    z = Int(nY * 100 / nX)

    if z != Z {
        maxNum = mid - 1
        count = mid
    } else {
        minNum = mid + 1
    }
}
print(count)
