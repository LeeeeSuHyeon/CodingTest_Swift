
for i in 1...10000{
    var flag = false
    let c = String(i).count * 9
    for j in stride(from: i - 1, through: i - c, by: -1) { // i = 20, j = 19~ 17
        if j < 0 {
            flag = true
        }
        if d(j) == i {
            break
        }
        if j == i - c {
            flag = true
        }
        if flag {
            print(i)
            break
        }
    }
}


func d(_ num : Int) -> Int{
    var num = num
    var sum = num
    
    while num >= 1 {
        sum += num % 10
        num = num / 10
    }
    return sum
}

