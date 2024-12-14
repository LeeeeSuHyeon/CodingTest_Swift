let N = Int(readLine()!)!
var nums = [Int]()
for _ in 0..<N {
    nums.append(Int(readLine()!)!)
}

nums.sorted().map{print($0)}
