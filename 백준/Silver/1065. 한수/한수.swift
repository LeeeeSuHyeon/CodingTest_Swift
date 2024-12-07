let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N + 1)
if N < 100 {
    print(N)
} else {
    print(answer(N))
}

func answer(_ n : Int) -> Int{
    arr[99] = 99
    
    for i in 100...n {
        var flag = false
        var j = i // 100
        var gap = Int.max
        var standardNum = j % 10 // 0
        j = j / 10  // 10
        
        while(j >= 1) {
            let x = j % 10 // 0, 1
            if gap == Int.max{
                gap = x - standardNum // 0
            } else {
                if gap != x - standardNum { // 0 != 1
                    flag = true
                    break
                }
            }
            standardNum = x // 0
            j = j / 10 // 1
        }
        
        arr[i] = flag ? arr[i - 1] : arr[i - 1] + 1
    }
    return arr[n]
}
