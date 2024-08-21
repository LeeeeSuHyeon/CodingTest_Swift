import Foundation 
let input = Int(readLine()!)!
var array = [[Int]]()
var answer = 0

for _ in 0..<input {
    let input = readLine()!.split(separator : " ").map{Int($0)!}
    array.append(input)
}

for i in 1...9 {    // 100의 자리
    for j in 1...9 {    // 10의 자리
        for k in 1...9 {    // 1의 자리
            if i == j || j == k || i == k {
                continue
            }
            var count = 0
            for arr in array {
                var strikeCount = 0
                var ballCount = 0
               let qi = arr[0] / 100        // 100의 자리    
               let qj = arr[0] % 100 / 10    // 10의 자리
               let qk = arr[0] % 10          // 1의 자리   
                if i == qi {
                    strikeCount += 1
                } 
                if j == qj {
                    strikeCount += 1
                } 
                if k == qk {
                    strikeCount += 1
                } 
                if i == qj || i == qk {
                    ballCount += 1
                } 
                if j == qk || j == qi{
                    ballCount += 1
                } 
                if k == qi || k == qj{
                    ballCount += 1
                } 
                if strikeCount == arr[1] && ballCount == arr[2] {
                    count += 1
                }
            }
            if count == input {
                answer += 1
            }
        }
    }
}
print(answer)