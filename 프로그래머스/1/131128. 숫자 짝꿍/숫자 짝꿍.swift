import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xCount = Array(repeating: 0, count: 10)
    var yCount =  Array(repeating: 0, count: 10)
    var answer = ""
    
    for x in X {
        xCount[Int(String(x))!] += 1
    }
    
    for y in Y {
        yCount[Int(String(y))!] += 1
    }
    
    for i in stride(from: 9, through: 0, by: -1) {
        while xCount[i] > 0 && yCount[i] > 0 {
            answer += String(i)
            xCount[i] -= 1
            yCount[i] -= 1
        }
    }
    
    answer = answer == "" ? "-1" : answer
    return answer.first == "0" ? "0" : answer
}