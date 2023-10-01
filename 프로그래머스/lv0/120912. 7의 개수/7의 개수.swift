import Foundation

func solution(_ array:[Int]) -> Int {
    var count = 0
    array.map{
        for i in Array(String($0)){
            count += i == "7" ? 1 : 0
        }
    }
    
    return count
}