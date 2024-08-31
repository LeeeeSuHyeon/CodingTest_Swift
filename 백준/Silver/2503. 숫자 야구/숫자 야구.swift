let input = Int(readLine()!)!
var arr = [[Int]]()
var answer = 0
for _ in 0..<input {
    arr.append(readLine()!.split(separator : " ").map{Int($0)!})
}

func checker(_ count : Int, _ num : Int) -> Bool {
    var strike = 0
    var ball = 0
    let arrNum = arr[count][0]
    
    let arrNumH = arrNum / 100
    let arrNumT = arrNum % 100 / 10
    let arrNumO = arrNum % 10
    
    let targetH = num / 100
    let targetT = num % 100 / 10
    let targetO = num % 10
    
    if targetH == targetT || targetT == targetO || targetH == targetO {
        return false
    }
    if targetH == 0 || targetO == 0 || targetT == 0 {
        return false
    }
    if arrNumH == targetH {
        strike += 1
    }
    if arrNumT == targetT {
        strike += 1
    }
    if arrNumO == targetO {
        strike += 1
    }
    if targetT == arrNumO || targetT == arrNumH{
        ball += 1
    }
    if targetH == arrNumO || targetH == arrNumT{
        ball += 1
    }
    if targetO == arrNumT || targetO == arrNumH {
        ball += 1
    }
    if strike == arr[count][1] && ball == arr[count][2] {
        return true
    }
    return false
    
}

func recur(_ count : Int, _ num : Int) {
    if count == input {
        answer += 1
        recur(0, num + 1)
        return
    }
    if num == 1000 {
        return
    }
    if checker(count, num) {
        recur(count + 1, num)
    } else {
        recur(0, num + 1)
    }
}
recur(0, 100)
print(answer)