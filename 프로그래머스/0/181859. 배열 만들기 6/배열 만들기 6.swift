import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = [Int]()
    for i in 0..<arr.count {
        if(stk.isEmpty){
            stk.append(arr[i])
        }
        else if(stk[stk.count - 1] == arr[i]){
            stk.removeLast()
            continue
        }
        else{
            stk.append(arr[i])
        }
    }
    return stk.isEmpty ? [-1] : stk
}