import Foundation

func solution(_ numbers:String) -> Int64 {
    var nums = numbers
    var str = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    for i in 0...9{
        nums = nums.replacingOccurrences(of: str[i], with: num[i])
    }
   
    
    return Int64(nums) ?? 0
}