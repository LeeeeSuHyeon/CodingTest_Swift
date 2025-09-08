func solution(_ files:[String]) -> [String] {
    let headPattern = "[a-z -.]+"
    let numberPattern = "[0-9]+"
    var answer = [(head: String, number: Int, index: Int, fullName: String)]()
    
    for (index, file) in files.enumerated() {
        let lowerFile = file.lowercased()
        let headRange = lowerFile.range(of: headPattern, options: .regularExpression)! // 헤드 범위
        let numberRange = lowerFile.range(of: numberPattern, options: .regularExpression)! // 숫자 범위
        
        let head = String(lowerFile[headRange])
        let number = Int(lowerFile[numberRange])!

        answer.append((head: head, number: number, index: index, fullName: file))
    }
    
    return answer.sorted { 
        if $0.head == $1.head {
            if $0.number == $1.number {
                return $0.index < $1.index
            } else {
                return $0.number < $1.number
            }
        } else {
            return $0.head < $1.head
        }
    }.map { $0.fullName }
}


/*
1. 숫자를 기준으로 Head, Number를 나누고 Tail 버리기
2. head lowercased
3. head, number 모두 같을 경우 튜플을 사용하여 순서 남기기 

*/