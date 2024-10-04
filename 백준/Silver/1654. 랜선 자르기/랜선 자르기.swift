let input = readLine()!.split(separator: " ").map{Int($0)!}
let (K, N) = (input[0], input[1])
var lines = [Int]()
for _ in 0..<K {
    lines.append(Int(readLine()!)!)
}

var start = 1
var end = lines.max() ?? 0
while start <= end {
    let mid = (start + end) / 2
    var count = 0
    for line in lines {
        if line >= mid {
            count += line / mid
        }
    }
    if count >= N {
        start = mid + 1
    }
    else {
        end = mid - 1
    }
}
print(end)
