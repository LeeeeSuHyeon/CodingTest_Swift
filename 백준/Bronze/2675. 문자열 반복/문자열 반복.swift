import Foundation

let count = Int(readLine()!)!

for i in 0..<count {
    let arr = String(readLine()!).split(separator : " ")
    var answer = ""
    arr[1].map{
        answer += String(repeating : $0, count : Int(arr[0]) ?? 0)
    }
    print(answer)
}