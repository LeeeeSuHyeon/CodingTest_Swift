import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var answer = [Int]()
    for p in photo{
        answer.append(p.map{name.firstIndex(of: $0) != nil ? yearning[name.firstIndex(of : $0)!] : 0 }.reduce(0, +))
    }
    
    return answer
}