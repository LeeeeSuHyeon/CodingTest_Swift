let ESM = readLine()!.split(separator: " ").map{Int($0)!}
let (E, S, M) = (ESM[0], ESM[1], ESM[2])
var i = 0
var answer = 0

while true {
    answer = S + i * 28
    let mCondition = answer % 19 == 0 ? 19 : answer % 19
    let eCondition = answer % 15 == 0 ? 15 : answer % 15
    if (mCondition == M && eCondition == E){
        break
    }
    
    i += 1
}

print(answer)
