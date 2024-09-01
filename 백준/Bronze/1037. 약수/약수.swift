let input = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

print((nums.first ?? 0) * (nums.last ?? 0))