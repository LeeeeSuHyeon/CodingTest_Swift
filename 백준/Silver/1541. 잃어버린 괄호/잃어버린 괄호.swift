let input = readLine()!.split(separator: "-") // '-' 연산자 기준으로 배열을 나눔
var answer = 0     // 출력값
for (index, equation) in input.enumerated() {
    let sum = equation.split(separator: "+").map{Int($0)!}.reduce(0, +) // 괄호 내 수들의 합
    answer = index == 0 ? sum : answer - sum        // 배열의 첫 번째는 값만 더하고 다음 값들은 모두 빼줌
}

print(answer)
