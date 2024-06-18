import Foundation

let input = String(readLine()!).map{$0}
var time = 0
for i in input {
    switch i {
        case "A", "B", "C" : 
            time += 3
            break;
        case "D", "E", "F" : 
            time += 4
            break
        case "G", "H", "I" :
            time += 5
            break
        case "J", "K", "L" :
            time += 6
            break
        case "M", "N", "O" :
            time += 7
            break
        case "P", "Q", "R", "S" :
            time += 8
            break
        case "T", "U", "V" :
            time += 9
            break
         case "W", "X", "Y", "Z" :
            time += 10
            break
        default :
            break
    }
}
print(time)