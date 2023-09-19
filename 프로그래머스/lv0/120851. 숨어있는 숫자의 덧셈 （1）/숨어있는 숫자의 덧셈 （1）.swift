import Foundation

func solution(_ my_string:String) -> Int {
    let string = my_string.filter{ $0.isNumber }
    var sum = 0
    for str in string{
        if let num = Int(String(str)){
            sum += num
        }
        
    }
    return sum
}


// import Foundation

// func solution(_ my_string:String) -> Int {
//     return my_string.filter{$0.isNumber}.map{Int(String($0))!}.reduce(0, +)
// }