func solution(_ msg:String) -> [Int] {
    let msg = msg.map { String($0) }
    let count = msg.count
    var dic = [String: Int]()
    var answer = [Int]()
    var index = 1
    
    for i in 65...90 {
        let str = String(Character(UnicodeScalar(i)!))
        dic[str] = index
        index += 1
    }
    
    var reversedMsg = Array(msg.reversed())
    var str = ""
    
    while reversedMsg.count > 0 {
        let char = reversedMsg.removeLast()
        let before = str
        str += char
        
         // 사전에 등록된 글자가 있을 때
        if let value = dic[str] {
            continue
        } else {  // 사전에 등록된 글자가 없을 때
            dic[str] = index
            answer.append(dic[before]!)
            index += 1
            str = char
        }
    }
    
    answer.append(dic[str] ?? index)
    return answer
}