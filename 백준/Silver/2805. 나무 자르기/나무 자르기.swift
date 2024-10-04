let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M) = (input[0], input[1])
let trees = readLine()!.split(separator: " ").map{Int($0)!}

var start = 0
var end = trees.max() ?? 0

while start <= end {
    let mid = (start + end) / 2
    var wood = 0
    for tree in trees {
        if tree >= mid {
            wood += tree - mid
        }
    }
    
    if wood >= M {
        start = mid + 1
    } else {
        end = mid - 1
    }
}
print(end)
