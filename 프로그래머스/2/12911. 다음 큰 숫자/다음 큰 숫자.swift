import Foundation

func solution(_ n:Int) -> Int
{
    var one = String(n, radix : 2).filter{$0 == "1"}.count
    var count = 0
    var n = n 
    while(count != one){
        n += 1
        count = String(n, radix : 2).filter{$0 == "1"}.count        
    }
    
    return n
}