import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var str = Array(my_str)
    str = str.reversed()

    var answer = [String]()
    while(!str.isEmpty){
        var arr = ""
        for _ in 1...n{
            if let a = str.popLast(){
                arr += String(a)
            }
        }
        answer.append(arr)
    }
    return answer
}