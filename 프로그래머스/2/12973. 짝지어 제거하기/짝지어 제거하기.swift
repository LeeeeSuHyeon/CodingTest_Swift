import Foundation

func solution(_ s:String) -> Int{
    
    var arr = s.map{String($0)}
    var sub = [String]()
    sub.append(arr[0])
    
    for i in 1..<arr.count{
        sub.append(arr[i])
        if(sub.count < 2){
            continue
        } else{
            if(sub[sub.count - 1] == sub[sub.count - 2]){
                sub.removeLast()
                sub.removeLast()
            }
        }
    }

    return sub == [] ? 1 : 0
}