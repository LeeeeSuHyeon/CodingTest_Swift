import Foundation

func solution(_ n:Int) -> Int 
{
    var ans:Int = 0
    
    var n = n
    while(n > 1){
        if (!(n % 2 == 0)){
            ans += 1
            n -= 1
        }
        n = n / 2
    }
    
    

    return ans + 1
}
