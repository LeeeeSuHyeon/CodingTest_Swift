import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dic = [Int : Int]()
    for i in tangerine {
        if dic[i] != nil {
            dic[i]! += 1
        }
        else{
            dic[i] = 1
        }
        if dic[i]! >= k {return 1}
    }
    var num = 0
    var count = 0
    for (_, i) in dic.sorted{$0.1 > $1.1}{
        num += i
        count += 1
        if(num >= k){return count}
    }
    return 0
}


// import Foundation

// func solution(_ k:Int, _ tangerine:[Int]) -> Int {
//     var counts = [Int]()
//     var maxT = tangerine.max() ?? 0
//     for i in (1...maxT).reversed() {
//         var c = tangerine.filter{$0 == i}.count
//         if(c >= k){return 1}
//         counts.append(c)
//     }
    
    
//     counts = counts.sorted(by : >)
//     var n = 0
//     for i in 0..<counts.count{
//         n += counts[i]
//         if n >= k { return i + 1}
//     }
//     return 0
// }