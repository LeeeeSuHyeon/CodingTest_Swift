import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    
//     var string : [String] = []
//     for str in my_string{
//         string.append(String(str))
//     }
//     print(string)
//     var change = string[num1]
//     string[num1] = string[num2]
//     string[num2] = change

//     return string.joined(separator: "")
    
    var stringArray = my_string.map{String($0)}
    stringArray.swapAt(num1, num2)
    return stringArray.joined(separator: "")
}