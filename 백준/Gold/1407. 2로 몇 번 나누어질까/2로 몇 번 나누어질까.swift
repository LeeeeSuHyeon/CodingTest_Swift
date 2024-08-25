// 175 -> 입력
// 2의 배수 개수 만큼 + 1 -> 175 / 2 * (2 - 1)
// 4의 배수 개수 만큼 + 2 -> 175 / 4 * (4 - 2)
// 8의 배수 개수 만큼 + 4 -> 175 / 8 * (8 - 4)

// 1의 배수 개수 만큼 + 1 -> 175
// 2의 배수 개수 만큼 + 1 -> (175 / (2 ^ 1)) * ((2 ^ 1) - 2 ^ (1 - 1))
// 4의 배수 개수 만큼 + 2 -> (175 / (2 ^ 2)) * ((2 ^ 2) - 2 ^ (2 - 1))
// 8의 배수 개수 만큼 + 4 -> (175 / (2 ^ 3)) * ((2 ^ 3) - 2 ^ (3 - 1))
// 16의 배수 개수 만큼 + 8 -> (175 / (2 ^ 4)) * ((2 ^ 4) - 2 ^ (4 - 1))

import Foundation 
let input = readLine()!.split(separator : " ").map{Int($0)!}
func doublePow(_ count : Int) -> Int{
    return Int(pow(2.0, Double(count)))
}

func sum(_ num : Int) -> Int {
    var count = num
    for i in 1...1000 {
        if doublePow(i) > num {break}
        count += num / doublePow(i) * (doublePow(i) - doublePow(i - 1))
    }
    return count
}
print(sum(input[1]) - sum(input[0] - 1))