var N = Int(readLine()!)!
let arr1 = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
let M = Int(readLine()!)!
let arr2 = readLine()!.split(separator: " ").map{Int($0)!}

for num in arr2 {
    var start = 0
    var end = N - 1
    var flag = false
    while start <= end {
        let mid = (start + end) / 2
        if arr1[mid] == num {
            flag = true
            break
        }
        else if arr1[mid] > num {
            end = mid - 1
        }
        else {  // arr1[mid] < num
            start = mid + 1
        }
    }
    print(flag ? 1 : 0, terminator: " ")
}
