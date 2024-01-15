func solution(_ arr:[Int]) -> Int {
    var arr = arr.sorted()
    while(arr.count > 1){
        var lcm = 0
        var div = 0
        var a = [Int]()
        for j in 1...arr[0]{
            if arr[0] % j == 0 {a.append(j)}
        }
        for j in 1...arr[1]{
            if arr[1] % j == 0 {a.append(j)}
        }
        a = a.sorted(by : >)
        var j = true
        while(j){
            for k in 0..<a.count - 1{
                if(a[k] == a[k+1]){
                    div = a[k]
                    j = false
                    break
                }
            }
        }  
        arr.append(arr[0] * arr[1] / div)
        arr.remove(at : 0)
        arr.remove(at : 0)
        arr.sorted()
    }
    return arr[0]
}


// func solution(_ arr:[Int]) -> Int {
//     var arr = arr.sorted()
//     var div = [Int]()
//     for i in 0..<arr.count - 1{
        // var a = [Int]()
        // for j in 1...arr[i]{
        //     if arr[i] % j == 0 {a.append(j)}
        // }
        // for j in 1...arr[i+1]{
        //     if arr[i+1] % j == 0 {a.append(j)}
        // }
        // a = a.sorted(by : >)
        // var j = true
        // while(j){
        //     for k in 0..<a.count - 1{
        //         if(a[k] == a[k+1]){
        //             div.append(a[k])
        //             j = false
        //         }
        //     }
        // }  
//     }
//     var answer = arr.map{Int(String($0))!}.reduce(1, *)
//     for i in 0..<div.count{
//         answer /= div[i]
//     }
//     return answer
    
    
//     4, 12, 20, 30 -> 60
// }