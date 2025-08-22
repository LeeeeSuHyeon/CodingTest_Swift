func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache = [String]()
    var answer = 0
    
    for citie in cities {
        let citie = citie.lowercased()
        if let index = cache.firstIndex(of: citie) {
            cache.remove(at: index)
            cache.append(citie)
            answer += 1
        } else {
            cache.append(citie)
            answer += 5
        }
        
        if cache.count > cacheSize {
             cache.removeFirst()
        }
    }
    return answer
}


/*

크기가 cacheSize인 배열 생성
cities를 돌면서 배열에 있으면 +1, 없으면 +5
큐 사용 (선입 선출)
캐시 히트일 떄 -> 캐시 히트 위치를 찾아 삭제 후 다시 append

*/