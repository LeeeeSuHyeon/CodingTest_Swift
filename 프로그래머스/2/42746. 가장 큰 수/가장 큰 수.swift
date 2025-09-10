import Foundation

func solution(_ numbers:[Int]) -> String {
    let numbers = numbers.map { String($0) }.sorted { $0 + $1 > $1 + $0 }
    return numbers[0] == "0" ? "0" : numbers.joined()
}

/*

원소는 모두 1000 이하이므로
4자리 수 미만이면 마지막 자리수를 반복해서 4자리까지 맞춤
튜플로 (실제 값, 4자리 수)
4자리 수로 비교 후 정렬, 튜플의 합 반환

입력값 〉 [1, 10, 100, 1000]
기댓값 〉 "1101001000"
*/
