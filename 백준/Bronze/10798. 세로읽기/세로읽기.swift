import Foundation

var input = [[Character]]()
for _ in 0...4 {
    input.append(readLine()!.map{$0})
}

var flag = [true, true, true, true, true]

while(flag[0] || flag[1] || flag[2] || flag[3] || flag[4]){
    for i in 0...4 {
        if flag[i] {
            print(String(input[i][0]), terminator : "")
            input[i].remove(at : 0)
            flag[i] = input[i] != []
        }
    }
}