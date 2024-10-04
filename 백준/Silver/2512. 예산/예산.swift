let N = Int(readLine()!)!
let requests = readLine()!.split(separator: " ").map{Int($0)!}
let M = Int(readLine()!)!

var s = 1
var e = requests.max() ?? 0

while s <= e {
    let mid = (s + e) / 2
    var sum = 0
    for request in requests {
        if request > mid {
            sum += mid
        }
        else {
            sum += request
        }
    }
    if sum <= M {
        s = mid + 1
    }
    else {
        e = mid - 1
    }
}
print(e)
