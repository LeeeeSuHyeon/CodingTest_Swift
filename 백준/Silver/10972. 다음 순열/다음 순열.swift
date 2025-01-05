import Foundation
let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int($0)!}

if input == Array(1...N).reversed() {
    print(-1)
} else {
    Loop: for i in (0..<N).reversed() {
        if input[i - 1] < input[i] {
            for j in (i..<N).reversed() {
                if input[i - 1] < input[j] {
                    input.swapAt(i - 1, j)
                    let sortedArray = input[i...].sorted()
                    input = input[...(i-1)] + sortedArray
                    print(input.map{String($0)}.joined(separator: " "))
                    break Loop
                }
            }
        }
    }
}

