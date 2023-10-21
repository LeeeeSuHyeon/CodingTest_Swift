func solution(_ phone_number:String) -> String {
//     var length = phone_number.count
//     var arr = phone_number.map{String($0)}
//     for i in 0..<length-4{
//         arr[i] = "*"
//     }
    
//     return arr.joined()
    String(repeating: "*", count: phone_number.count-4) + phone_number.suffix(4)
}