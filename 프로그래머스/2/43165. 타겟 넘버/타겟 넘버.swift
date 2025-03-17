import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    let numberCount = numbers.count
    var count = 0
    
    func recur(index: Int, value: Int){
        if index == numberCount { 
            if value == target {
                count += 1 
            }
            return 
        }
        
        recur(index: index + 1, value: value + numbers[index])
        recur(index: index + 1, value: value - numbers[index])
        
    }
    recur(index: 0, value: 0)
    return count
}