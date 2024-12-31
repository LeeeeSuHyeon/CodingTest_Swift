let n = Int(readLine()!)!
let k = Int(readLine()!)!
var nums = [String]()
for _ in 0..<n {
    nums.append(readLine()!)
}
var numbers = Set<String>()
var visited = Array(repeating: false, count: n)

func recur(index: Int, count: Int, num: String) {
    if count == k {
        // 확인 후
        if !numbers.contains(num) {
            numbers.insert(num)
        }
        return
    }

    if index == n {
        return
    }
    
    for i in 0..<n {
        if !visited[i] {
            visited[i] = true
            recur(index: index + 1, count: count + 1, num: num + nums[i])
            visited[i] = false
        }
    }
}

recur(index: 0, count: 0, num: "")
print(numbers.count)
