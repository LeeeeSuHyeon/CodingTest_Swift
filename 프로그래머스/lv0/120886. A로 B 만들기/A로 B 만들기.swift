import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    var my_after = after
    for str in before{
        if let range = my_after.range(of: String(str)){
            my_after.replaceSubrange(range, with: "")
        }
    }
    return my_after == "" ? 1 : 0
}