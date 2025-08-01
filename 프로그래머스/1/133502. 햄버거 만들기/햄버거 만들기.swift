import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var arr = [Int]()
    var answer = 0
    
    for ingre in ingredient {
        arr.append(ingre)
        
        let count = arr.count
        
        if count >= 4 {
            if Array(arr.suffix(4)) == [1, 2, 3, 1] {
                answer += 1
                arr.removeLast(4)
            }
        }
    }
    
    return answer
}