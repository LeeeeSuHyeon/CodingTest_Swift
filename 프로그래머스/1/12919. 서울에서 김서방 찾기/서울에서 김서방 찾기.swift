func solution(_ seoul:[String]) -> String {
//     var index = 0
    
//     for (offset, element) in seoul.enumerated(){
//         if element == "Kim"{
//             index = offset
//         }
//     }
    
    
//     return "김서방은 " + String(index) + "에 있다"
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}