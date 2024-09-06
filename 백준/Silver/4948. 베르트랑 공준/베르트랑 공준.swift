import Foundation
var n = 123456 * 2
var primeNum = [Bool](repeating : true, count : n + 1)
primeNum[0] = false
primeNum[1] = false
for i in 2...Int(sqrt(Double(n))){
    if primeNum[i] {
        for j in stride(from : i * 2, to : n + 1, by : i){
            primeNum[j] = false
        }
    }
}

while(true) {
    let input = Int(readLine()!)!
    if input == 0 { break }
    print(primeNum[input+1...input*2].filter{$0}.count)
}
