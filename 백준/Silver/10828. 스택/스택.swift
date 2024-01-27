// import Foundation

// let num = Int(readLine()!)!
// var stack = [Int]()
// for _ in 0..<num {
//     let input = readLine()!.split(separator : " ").map{ String($0) }
//     let a = input[0]
//     if(a == "push"){
//         stack.append(Int(input[1])!)
//     } else if (a == "top"){
//         print(stack.isEmpty ? -1 : stack.last)
//     } else if (a == "pop"){
//         print(stack.isEmpty ? -1 : stack.removeLast())
//     } else if (a == "empty"){
//         print(stack.isEmpty ? 1 : 0)
//     } else if (a == "size"){
//         print(stack.count)
//     } 
// }


var stack = [Int]()
for _ in 0..<Int(readLine()!)!{    
    let input = readLine()!.split(separator: " ").map{String($0)} 
    switch input[0]{
        case "push":        
            stack.append(Int(input[1])!)    
        case "pop":        
            print(stack.isEmpty ? -1 : stack.removeLast())    
        case "size":
            print(stack.count)    
        case "empty":
            print(stack.isEmpty ? 1 : 0)    
        case "top":        
            print(stack.isEmpty ? -1 : stack.last!)    
        default:        
            break    
        }
}
