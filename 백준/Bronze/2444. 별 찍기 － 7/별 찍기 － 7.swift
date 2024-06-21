import Foundation

let input = Int(readLine()!)!
let r = input * 2 - 1

for i in 1...r {
    var star = ""
    if i < input {
       for j in 1...input - i{
            star += " "
       }
       for j in 1...2 * i - 1{
           star += "*"
       }
        print(star)
    } else if i > input{
       for j in 1...i - input{
            star += " "
       }
       for j in 1...2 * (r-i) + 1{
           star += "*"
       }
        print(star)
    }
    else{
        for j in 1...2 * i - 1{
            star += "*"
        }
        print(star)
    }
}
