import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var arr = [Int]()
    var answer = 0
    
    for ingre in ingredient {
        arr.append(ingre)
        
        let count = arr.count
        
        if count >= 4 && arr[count - 1] == 1 && arr[count - 2] == 3 && arr[count - 3] == 2 && arr[count - 4] == 1 {
            arr = Array(arr.prefix(count - 4))
            answer += 1
        }
    }
    
    return answer
}