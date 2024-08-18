import Foundation 
let _ = readLine()!
let arr = Set(readLine()!.split(separator : " ").map{Int($0)!})
let _ = readLine()!
let _ = readLine()!.split(separator : " ").map{
    print(arr.contains(Int(String($0))!) ? 1 : 0, terminator : " ")
}
