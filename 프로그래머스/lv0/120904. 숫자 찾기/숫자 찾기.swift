import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
//    var count = 1
//    for i in String(num){
//        if String(i) == String(k){
//         return count
//        }
//        else{
//            count += 1
//        }
//    }
//
//    return -1
    for (offset, element) in String(num).enumerated(){
        if String(k) == String(element){
            return offset + 1
        }
    }
    return -1
}
