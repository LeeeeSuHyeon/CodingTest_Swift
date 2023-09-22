import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
//     var shift = 1
//     var answer = numbers
//     if direction == "left" {
//         shift = numbers[0]
//         for i in 0..<numbers.count-1{
//             answer[i] = numbers[i+1]
//         }
//         answer[numbers.count-1] = shift
//     }
//     else{
//         shift = numbers[numbers.count-1]
//         for i in (1..<numbers.count).reversed(){
//             answer[i] = numbers[i-1]
//         }
//         answer[0] = shift
//     }
        
    var nums = numbers
    direction == "right" ? nums.insert(nums.removeLast(), at: 0) : nums.append(nums.removeFirst())
    return nums
    // return answer
}