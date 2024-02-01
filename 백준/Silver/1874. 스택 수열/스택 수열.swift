import Foundation

let num = Int(readLine()!)!
var arr = [Int]()
var answer = [String]()
var count = 1

for _ in 0..<num {

    let input = Int(readLine()!)!
    
    while(count <= input){
        answer.append("+")
        arr.append(count)
        count += 1
    }
    if(arr.last == input){
        answer.append("-")
        arr.popLast()
    }
    else {
        print("NO")
        exit(0)
    }
}

for str in answer {
    print(str)
}
