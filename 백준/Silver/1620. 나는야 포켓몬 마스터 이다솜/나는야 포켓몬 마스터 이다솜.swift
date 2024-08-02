import Foundation

let NM = readLine()!.split(separator : " ").map{Int($0)!}
var numArr : [Int : String] = [:]
var strArr : [String : Int] = [:]

for i in 1...NM[0] {
    let input = readLine()!
    numArr[i] = input
    strArr[input] = i
}

for _ in 0..<NM[1] {
    let input = String(readLine()!)
    if let i = Int(input) {
        print(numArr[i]!)
    }else {
        print(strArr[input]!)
    }

}