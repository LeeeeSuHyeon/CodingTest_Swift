func solution(_ str1:String, _ str2:String) -> Int {
    let str1 = str1.map { $0.lowercased() }
    let str2 = str2.map { $0.lowercased() }
    
    var dic = [String: (Int, Int)]()
    
    for i in 0..<str1.count - 1 {
        let key = "\(str1[i])\(str1[i + 1])"
        guard isEnglish(key) else { continue }
        
        if let value = dic[key] {
            dic[key] = (value.0 + 1, value.1)
        } else {
            dic[key] = (1, 0)
        }
    }

    for i in 0..<str2.count - 1 {
        let key = "\(str2[i])\(str2[i + 1])"
        guard isEnglish(key) else { continue }
        
        if let value = dic[key] {
            dic[key] = (value.0, value.1 + 1)
        } else {
            dic[key] = (0, 1)
        }
    }

    let intersection = dic.values.map { min($0.0, $0.1) }.reduce(0, +)
    let union = dic.values.map { max($0.0, $0.1) }.reduce(0, +)
    let similar = union == 0 ? 1.0 : Double(intersection) / Double(union)
   
    return Int(similar * 65536)
}

func isEnglish(_ str: String) -> Bool {
    let result = str.replacingOccurrences(of: "[^A-Za-z]", with: "", options: .regularExpression)
    return str.count == result.count
}

/*
두 집합의 교집합 크기를 두 집합의 합집합 크기로 나눈 값으로 정의
 모두 공집합일 경우, J(A, B) = 1
다중집합의 교집합 A ∩ B는 원소 "1"을 min(3, 5)인 3개, 합집합 A ∪ B는 원소 "1"을 max(3, 5)인 5개 가지게 된다. 

1. 특수 문자 제외 -> 정규식
2. 대소문자 통일 -> 소문자 lowercased


1. str1을 돌면서 딕셔너리 생성, 각 키마다 + 1
2. str2를 돌면서 딕셔너리에 추가 있으면 - 1
3. 키의 개수 = 합집합, value == 0, 교집합

aa, aa 
aa aa aa

intersection = 2

*/