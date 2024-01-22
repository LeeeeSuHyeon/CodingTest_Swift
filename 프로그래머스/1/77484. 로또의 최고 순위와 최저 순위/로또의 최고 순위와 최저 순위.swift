import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    var t = lottos.filter{win_nums.contains($0)}.count
    var zero = lottos.filter{$0 == 0}.count
    
    return [t == 0 && zero == 0 ? 6: 7 - (t+zero), t <= 1 ? 6 : 7 - t]
}

