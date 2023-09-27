import Foundation

func solution(_ emergency:[Int]) -> [Int] {
//     var sort = emergency.sorted(by: >)
//     var answer : [Int] = []
    
//     for (_, element) in emergency.enumerated(){
//         var count = 1
//         for i in sort{
//             if i == element{
//                 answer.append(count)
//             }
//             count += 1
//         }
//     }

//     return answer
    
     return emergency.map{i in emergency.filter{$0 > i}.count+1}
}
