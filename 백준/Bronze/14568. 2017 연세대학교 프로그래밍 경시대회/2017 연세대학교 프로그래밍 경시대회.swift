import Foundation 

let input = Int(readLine()!)!
var count = 0
for t in 1...input {
    for y in 1...input{
        for n in 1...input {
            if t + y + n == input && n >= y + 2 && t % 2 == 0{
                count += 1
            }
        }
    }
}
print(count)