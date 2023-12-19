import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {

    var answer = 0
    
    for i in 1...number{
        var j = 1
        var count = 0
        while(j <= Int(sqrt(Double(i)))){
            count += i % j == 0 ? 2 : 0
            if(j * j == i){
                count -= i % j == 0 ? 1 : 0
            }
            
            if(count > limit){ break }
            j += 1
        }
        answer += (count > limit) ? power : count
    }
    return answer
}