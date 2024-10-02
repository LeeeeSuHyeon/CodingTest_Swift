let input = readLine()!.split(separator: " ").map{Int($0)!}
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

// 투포인터 설정
var start = 0
var end = input[0] - 1
let target = input[1]

var count = 0
var remain = 0 // 제외되어 남은 병의 개수

if target == 1 {
    print(arr.filter({$0 == 1}).count + arr.filter({$0 == 0}).count / 3)
}
else {
    // 포인터가 교차되면 멈춤
    while(start <= end) {
        // 이미 꽉찬 용량
        if arr[end] == target {
            count += 1
            end -= 1
            continue
        }
        // 포인터가 같은 지점에서 만나면 제외 개수 추가
        if start == end {
            remain += 1
            break
        }
        let combined = arr[start] + arr[end] + target / 2
        if combined >= target {
            count += 1
            start += 1
            end -= 1
        }
        // target의 반보다 작으면
        else {
            remain += 1
            start += 1
        }
    }
    print(count + remain / 3)   // 병이 3개면 하나의 병은 모두 채울 수 있음
}
