let N = Int(readLine()!)! // 회의 수
var arr = [(start: Int, end: Int)]() // 회의 시작 시간, 끝나는 시간 배열

for _ in 0..<N {
    let meetingTime = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append((meetingTime[0], meetingTime[1]))
}

arr = arr.sorted { first, second in
    if first.end == second.end {     // 회의 끝나는 시간이 같다면, 시작 시간이 빠른 순서대로 정렬
        return first.start < second.start
    }
    return first.end < second.end  // 회의가 빠르게 끝나는 순서대로 정렬
}

var startTime = arr[0].end // 이전 회의가 끝난 시간 (다음 회의를 시작할 수 있는 시간)
var answer = 1 // 첫 번째 회의는 했으니 1로 시작

for (start, end) in arr[1...] { // 첫 번째 회의는 진행했으니 다음 회의부터 탐색
    if start >= startTime { // 다음 회의 시작 시간이 이전 회의가 끝난 시간보다 이후라면 선택
        answer += 1
        startTime = end // 회의를 추가했으니, 다음 회의 시작 시간은 현재 회의 끝난 시간 이후부터 가능
    }
}

print(answer)
