import Foundation
var flag = true
while(flag) {
    let input = Int(readLine()!)!
    if input == 0 { flag = false }
    else {
        var count = 0
        for i in input+1...(input * 2){
            var isDecimal = true
            if !(i == 2 || i == 3) {
                for j in 2...Int(sqrt(Double(i))){
                    if i % j == 0 {
                        isDecimal = false
                        break
                    }
                }
            }

            if isDecimal {
                count += 1
            }
        }
        print(count)
    }
}