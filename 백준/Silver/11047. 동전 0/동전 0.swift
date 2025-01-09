let NK = readLine()!.split(separator: " ").map{Int($0)!}
let (N, K) = (NK[0], NK[1]) // N: 동전의 종류 개수, K: 목표 값
var coins = [Int]() // 동전 단위 배열
var target = K // 남은 값
var answer = 0 // 필요한 동전 개수
for _ in 0..<N {
    let coin = Int(readLine()!)!
    if coin <= K { // 동전 단위 중 목표값(K)보다 작은 코인만 추가
        coins.append(coin)
    }
}

for coin in coins.reversed() { // 단위가 가장 큰 코인부터 확인 (최선의 선택)
    answer += target / coin      // 코인으로 나눈 몫 (코인 개수)의 합
    target %= coin              // 남은 값 수정
    if target == 0 { break }    // 남은 값이 없으면 break
}

print(answer)
