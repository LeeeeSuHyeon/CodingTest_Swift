import Foundation

func solution(_ storey:Int) -> Int {
    var arr = String(storey).map { Int(String($0))! }
    var count = 0
    
    for i in stride(from: arr.count - 1, through: 0, by: -1) {
        let num = arr[i]
        if num == 10, i != 0 { continue }
        
        if num > 5 {
            count += 10 - num
            if i == 0 { count += 1; break }
            
            for j in stride(from: i - 1, through: 0, by: -1) {
                arr[j] += 1
                if arr[j] != 10 { break }
            }
            
        } else if num == 5, i > 0, arr[i - 1] >= 5 {
            count += 5
            for j in stride(from: i - 1, through: 0, by: -1) {
                arr[j] += 1
                if arr[j] != 10 { break }
            }
        } else {
            count += num
        }
    }
    
    return count
}

/* 1030
1. dp 사용 -> 시간 초과
2. 각 자릿수마다 0을 만드는데, 5 이상이면 10으로 만들고 다음 자릿수에 1 넘겨주면 될듯

*/