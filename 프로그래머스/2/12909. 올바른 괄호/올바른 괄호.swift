import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var count = 0
    
    var s = Array(s)
    if(s[0] == ")" || s[s.count - 1] == "(") {return false}
    
    for i in s {
        count += i == "(" ? 1 : -1
        if (count > s.count / 2 || count == -1){return false}
    }

    return count == 0 ? true : false
}