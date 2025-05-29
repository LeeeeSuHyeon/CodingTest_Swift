import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    var current = 1
    var range = 2 * w + 1
    
    for station in stations {
        if current < station - w {
            let gap = station - w - current
            answer += Int(ceil(Double(gap) / Double(range)))
        }
        
        current = station + w + 1
    }

    if current <= n {
        answer += Int(ceil(Double(n - current + 1) / Double(range)))
    }
    
    return answer
}