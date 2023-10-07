import Foundation

func solution(_ my_string:String) -> Int {
    
    var str = my_string.split(separator: " ")
    
    var answer = Int(str[0])!
    for i in 1...str.count-1{
        if str[i] == "+" {
            answer += Int(str[i+1])!
        }
        else if str[i] == "-"{
            answer -= Int(str[i+1])!
        }
        
    }
    
    
    return answer
}