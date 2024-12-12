let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map{Int($0)!}
var answer = Array(repeating: -1, count: N)
var stack = [(Int, Int)]()

for (index, num) in A.enumerated() {
    while let last = stack.last, last.0 < num  {
        answer[last.1] = num
        stack.removeLast()
    }
    stack.append((num, index))
}

print(answer.map{String($0)}.joined(separator: " "))