let i = Int(readLine()!)!

for _ in 0..<i {
    let num = Int(readLine()!)!
    var dp = [Int](repeating: 0, count : num+1)
    if(num == 1){
        print(1)
    } 
    else if (num == 2){
        print(2)
    }
    else if (num == 3){
        print(4)
    }
    else{
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        
        for j in 4..<num+1 {
            dp[j] = dp[j-1] + dp[j-2] + dp[j-3]
         }
        print(dp[num])
    }
}

