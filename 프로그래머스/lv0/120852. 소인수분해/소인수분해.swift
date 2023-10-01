import Foundation

func solution(_ n:Int) -> [Int] {
    var answer = [Int]()
    var num = n
   
    for i in 2...num{
        if num % i == 0{
            while( num % i == 0){
                num = num / i
            }
            print(num, i)
            answer.append(i)
        }
    }
    return answer
}