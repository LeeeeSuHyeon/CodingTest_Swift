import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 1
    var A = a + 1
    var B = b + 1

    while (A / 2 != B / 2){
        answer += 1 
        A = A / 2 + 1
        B = B / 2 + 1
    }
    return answer
}