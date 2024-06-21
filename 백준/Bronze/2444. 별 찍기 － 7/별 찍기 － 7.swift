import Foundation

let input = Int(readLine()!)!
let r = input * 2 - 1

for i in 1...r {
    var output = ""
    var space = ""
    var star = ""
    if i < input {
        space = String(repeating : " ", count : input - i)
        star = String(repeating : "*", count : i * 2 - 1)
    } else if i > input {
        space = String(repeating : " ", count : i - input)
        star = String(repeating : "*", count : (r - i) * 2 + 1)
    }
    else {
        star = String(repeating : "*", count : r)
    }
    print(space + star)
 
}