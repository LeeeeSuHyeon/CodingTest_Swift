import Foundation

func solution(_ food:[Int]) -> String {
    var str = ""
    for i in 1...food.count-1 {
        if food[i] / 2 < 1{
            continue
        }
        for j in 1...(food[i] / 2){
            str += String(i)
        }
    }
    var otherStr = str.reversed()
    str += "0"
    str += otherStr
    
    return str
}