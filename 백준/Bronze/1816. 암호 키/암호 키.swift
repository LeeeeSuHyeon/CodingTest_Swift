import Foundation 

let input = Int(readLine()!)!

for _ in 0..<input {
    let input = Int(readLine()!)!
    for i in 2...1000000 {
        if input % i == 0 {
            print("NO")
            break
        }
        else if i == 1000000 {
            print("YES")
        }
    }
}