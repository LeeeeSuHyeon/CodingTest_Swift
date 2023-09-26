import Foundation

func solution(_ my_string:String) -> Int {
    var str = ""
    var num : [Int] = []
    for i in my_string{
        if i.isNumber {
            str += String(i)
        }
        else{
            if let number = Int(str){
                num.append(number)
            }
            str = ""
        }
    }
    if let number = Int(str){
        num.append(number)
    }
    return num.reduce(0, +)
}