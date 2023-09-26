import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var count = 0
    for a in i...j{
        for b in String(a){
            if String(b) == String(k){
                count += 1
            }
        }
    }
    return count
}