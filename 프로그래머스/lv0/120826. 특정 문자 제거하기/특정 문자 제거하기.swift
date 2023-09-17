import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var answer = String(my_string.filter{$0 != Character(letter)})
    
    return answer
}