import Foundation

func solution(_ str_list:[String]) -> [String] {
    var answer = [String]()
    var l = str_list.firstIndex(of : "l") ?? 21
    var r = str_list.firstIndex(of : "r") ?? 21
    if(l < r){
        return Array(str_list.prefix(l))
    }
    else if(l > r){
        return str_list.suffix(str_list.count - (r + 1))
    }
    return answer
}

// ["u", "u", "d", "r", "d"]