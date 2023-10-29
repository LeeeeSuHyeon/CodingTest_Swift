import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var a = budget 
    var arr = d.sorted()
    var count = 0 
    
    while(a >= arr[count]){
        a -= arr[count]
        count += 1
        if (count == arr.count) {return count}
    }
    return count 
}