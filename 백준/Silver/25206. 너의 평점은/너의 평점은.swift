import Foundation 

let dic = ["A+" : 4.5, "A0" : 4.0, "B+" : 3.5, "B0" : 3.0, "C+" : 2.5, "C0" : 2.0, "D+" : 1.5, "D0" : 1.0, "F" : 0.0]
var sum = 0.0
var count = 0.0
for _ in 0..<20 {
    let input = String(readLine()!).split(separator : " ")
    if input[2] != "P" {
        sum += Double(input[1] ?? "0.0")! * dic[String(input[2])]!    
        count += Double(input[1] ?? "0.0")!
    }
}
print(sum / count)
