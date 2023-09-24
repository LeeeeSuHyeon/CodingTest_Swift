import Foundation

func solution(_ my_string:String) -> String {
    // var answer : [String] = []
    // for (offset, element) in my_string.enumerated(){
    //     if offset == my_string.firstIndex(of: element)?.encodedOffset{
    //         answer.append(String(element))
    //     }
    // }
    // return answer.joined()
    
        var answer = ""
    for str in my_string{
        if !answer.contains(str){
            answer += String(str)
        }
    }
    return answer
}