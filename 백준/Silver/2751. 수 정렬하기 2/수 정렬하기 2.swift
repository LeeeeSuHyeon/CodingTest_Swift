let N = Int(readLine()!)!
var nums = [Int]()
for _ in 0..<N {
    nums.append(Int(readLine()!)!)
}
print(nums.sorted().map{String($0)}.joined(separator: "\n"))