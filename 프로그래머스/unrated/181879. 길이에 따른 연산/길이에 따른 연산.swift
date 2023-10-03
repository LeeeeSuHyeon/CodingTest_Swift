import Foundation

func solution(_ num_list:[Int]) -> Int {

    return num_list.count > 10 ? Int(num_list.map{$0}.reduce(0, +)) : num_list.map{$0}.reduce(1, *)
    
}