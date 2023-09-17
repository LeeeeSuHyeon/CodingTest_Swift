import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var odd : [Int] = []
    var even : [Int] = []
    num_list.map{$0 % 2 == 0 ? even.append($0):     odd.append($0)}
    
    return [even.count, odd.count]
}