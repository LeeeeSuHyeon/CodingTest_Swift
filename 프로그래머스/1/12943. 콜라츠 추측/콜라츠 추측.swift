func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    
    while(n != 1){
        if (count == 500) {break}
        n = (n % 2 == 0) ? n / 2 : n * 3 + 1
        count += 1
        
    }
    return count == 500 ? -1 : count
    
}