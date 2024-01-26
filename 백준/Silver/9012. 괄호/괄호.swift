import Foundation

let num = Int(readLine()!)!

for _ in 0..<num{
    let str = readLine()!
    var arr = [Character]()
    var tf = true
    
    for s in str {
        if(s == "("){
            arr.append(s)
        }
        else if(!arr.isEmpty){
            arr.removeLast()
        }
        else{
            tf = false
            break
        }
    }
    if tf {
        print(arr.isEmpty ? "YES" : "NO")
    }
    else {print("NO")}
}
