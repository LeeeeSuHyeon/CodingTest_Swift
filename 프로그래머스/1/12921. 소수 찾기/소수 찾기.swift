import Foundation
func solution(_ n:Int) -> Int {
    if(n == 2){return 1}
    var arr = Array(repeating : true, count : n + 1)
    arr[0] = false
    arr[1] = false

    for i in 2...Int(sqrt(Double(n))){
        for j in stride(from : i * i, to : arr.count, by : i){
            arr[j] = false
        }
    }
  
    return arr.filter{$0 == true}.count
}