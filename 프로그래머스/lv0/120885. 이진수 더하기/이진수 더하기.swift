
import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    var stack1 = Array(bin1)
    var stack2 = Array(bin2)
    var plus = 0
    var answer = [String]()
    
    while(!stack1.isEmpty || !stack2.isEmpty || plus != 0){
        let pop1 = Int(String(stack1.popLast() ?? "0")) ?? 0
        let pop2 = Int(String(stack2.popLast() ?? "0")) ?? 0
        var sum = pop1 + pop2 + plus
        print(sum)
        if sum > 1{
            sum -= 2
            plus = 1
        }
        else{
            plus = 0
        }
        answer.append(String(sum))
        print(answer)
    }
    if plus != 0 {
        answer.append(String(plus))
    }
    return answer.reversed().joined()
}