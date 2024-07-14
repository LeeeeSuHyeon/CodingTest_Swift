import Foundation

var wh = [[Bool]](repeating : [Bool](repeating : false, count : 100), count : 100)

let num = Int(readLine()!)!

for _ in 0..<num {
    let input = readLine()!.split(separator : " ").map{Int($0)!}
    let x = input[0]
    let y = input[1]
    
    for i in x..<x+10{
        for j in y..<y+10{
            wh[i][j] = true
        }
    }
}

print(wh.flatMap{$0}.filter{$0 == true}.count)