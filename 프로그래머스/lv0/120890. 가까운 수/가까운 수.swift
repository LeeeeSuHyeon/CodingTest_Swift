import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    var close = 100
    var answer = 0
    for i in array.sorted(){
        if close > abs(i-n){
            close = abs(i-n)
            answer = i
        }
    }
    return answer
}
