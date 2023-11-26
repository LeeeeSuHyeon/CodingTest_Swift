import Foundation

func solution(_ s:String) -> Int {
    let stringArr = "zero one two three four five six seven eight nine".components(separatedBy: " ");
    let numArr = ["0","1","2","3","4","5","6","7","8","9"]
    var answer = ""
    var word = ""
    for str in s{

        if(numArr.contains(String(str))){
            answer += String(str)
            continue;
        }
        word += String(str)
        if(stringArr.contains(word)){
            answer += String(stringArr.firstIndex(of : word)!)
            word = ""
        }
    }
    return Int(answer)!
    
}
    // func solution(_ s:String) -> Int {
    // let arr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    // var str = s
    // for i in 0..<arr.count {
    //     str = str.replacingOccurrences(of: arr[i], with: String(i))
    // }
    // return Int(str)!

// }