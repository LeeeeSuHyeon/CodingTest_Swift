import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd = Int(num_list.filter{$0 % 2 == 1}.map{String($0)}.joined()) ?? 0
    var even = Int(num_list.filter{$0 % 2 == 0}.map{String($0)}.joined()) ?? 0
    
    return odd + even
}
