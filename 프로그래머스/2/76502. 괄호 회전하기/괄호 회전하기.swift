import Foundation

func solution(_ s:String) -> Int {
    let dic : [String : String] = ["]" : "[", "}" : "{", ")" : "("]
    var arr = Array(s)
    var count = 0
    for _ in 1...arr.count {
        var temp = [String]()
        for i in arr {
            if(temp.isEmpty && dic[String(i)] != nil){
                temp.append("x")
                break
            }
            else if(temp.isEmpty && dic[String(i)] == nil){
                temp.append(String(i)) 
            }
            else if(temp[temp.count - 1] == dic[String(i)]){
                temp.removeLast()
            }
            else {temp.append(String(i))}
        }
        count += temp.isEmpty ? 1 : 0
        arr.append(arr[0])
        arr.removeFirst()
    }
    return count
}