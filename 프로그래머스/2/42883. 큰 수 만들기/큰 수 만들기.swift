import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack = [Character]()
    var count = 0
    
    for i in number {
        while !stack.isEmpty, count < k, stack.last! < i {
            stack.removeLast()
            count += 1
        }
        
        stack.append(i)
    }
    
    // 제거 횟수가 남아있다면, 뒤에서 자르기
    return String(stack.prefix(number.count - k))
}
