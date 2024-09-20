import Foundation
while let input = Int(readLine()!), input != -1 {
    let num = input
    var arr = [1]
    var flag = false
    if num > 3 {
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 {
                arr.append(i)
                arr.append(num / i)
            }
        }
        flag = arr.reduce(0, +) == num ? true : false
    }
    if flag {
        print("\(num) = \(arr.sorted().map{String($0)}.joined(separator: " + "))")
    } else {
        print("\(num) is NOT perfect.")
    }
    
}
