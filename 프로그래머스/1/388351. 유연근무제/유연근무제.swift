import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
	var maxSchedules = [Int]() // 최대 출근 시간
    for schedule in schedules {
        var time = schedule / 100		// 시간만 추출
        var minute = schedule % 100 + 10 // 분 추출 후 10분 더해줌
        
        if minute >= 60 { // 60분 이상이면 시간을 올려줌
            time += 1	  
            minute -= 60  
        }
        maxSchedules.append(time * 100 + minute) 
    }

    var answer = 0 // 상품을 받을 직원의 수
    
    for i in 0..<schedules.count { // 직원의 수 만큼 반복
        var isSuccess = true
        for j in 0..<7 { // 일주일 동안 반복
            var day = (j + startday) % 7  // 실제 요일
            day = day == 0 ? 7 : day   // 일요일은 0이 아닌 7이므로 예외 처리
			if (6...7).contains(day) { continue } // 토요일, 일요일 제외
            if timelogs[i][j] > maxSchedules[i] {  // 정시 출근을 하지 못했으면 실패
                isSuccess = false
                break
            }
        }
        if isSuccess { answer += 1 }
    }
    return answer
}

// 자신이 설정한 출근 희망 시간 + 10까지 어플로 출근
// 희망 시각이 9시 58분이면 10시 8분까지 출근
// 토, 일은 예외
// 매일 한 번씩 출근, 모든 시각은 시간에 100을 곱하고 분을 더한 정수로 표현 -> 10시 13분은 1013, 9시 58분은 958
// 실제로 늦지 않고 출근한 직원이 몇명인지 구하기
// schedules: 출근 희망 시각을 담은 배열 
// timelogs: 직원들이 일주일 동안 출근한 시각을 담은 2차원 배열 
// startday: 이벤트를 시작한 요일을 의미 (1...7) -> 6, 7은 토요일, 일요일이므로 제외해야 함
// 상품을 받을 직원의 수 return 