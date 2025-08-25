import Foundation

func solution(_ s:String) -> [Int] {
    var arr = [[Int]]()
    var temp = [Int]()
    var numString = ""
    var flag = 0
    var answer = [Int]()
    
    var s = s
    s.removeLast()
    s.removeFirst()
    
    
    for char in s {
        if flag == 0, char == "," { continue }
        
        if char == "{" {
            flag += 1
        } else if char == "}" {
            temp.append(Int(numString)!)
            flag -= 1
        } else if let num = Int(String(char)) {
            numString += String(char)
        } else if char == "," {
            temp.append(Int(numString)!)
            numString = ""
        }
        
        if flag == 0 {
            arr.append(temp)
            temp = []
            numString = ""
        }
    }
    
    // print(arr.sorted {$0.count < $1.count }.flatMap { $0 })
    arr.sorted {$0.count < $1.count }.flatMap { $0 }.forEach { 
        if !answer.contains($0) { answer.append($0) }
    }
    return answer
}