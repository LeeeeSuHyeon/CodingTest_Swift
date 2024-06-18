import Foundation 
let numArr = String(readLine()!).split(separator: " ")
let reversedNum = numArr.map{$0.map{String($0)}.reversed().joined(separator : "")}
print(reversedNum[0] > reversedNum[1] ? reversedNum[0] : reversedNum[1])