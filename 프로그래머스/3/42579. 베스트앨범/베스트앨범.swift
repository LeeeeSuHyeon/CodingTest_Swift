import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var sumDic = [String: Int]()
    var dic = [String: [(Int, Int)]]() // (재생횟수, 고유번호(인덱스))
    var answer = [Int]()
    for (offset, element) in genres.enumerated() {
        sumDic[element, default: 0] += plays[offset]
        dic[element, default: []].append((plays[offset], offset))
        
    }
    for genreSum in sumDic.sorted {$0.value > $1.value} {
        let genre = genreSum.key
        if dic[genre]!.count == 1 { answer.append(dic[genre]![0].1); continue }
        let sortedGenre = dic[genre]!.sorted {
            if $0.0 == $1.0 {
                return $0.1 < $1.1 // 재생횟수가 같으면 고유번호가 낮은 순
            }
            return $0.0 > $1.0 // 재생 횟수가 많은 순
        }
        
        answer.append(sortedGenre[0].1)
        answer.append(sortedGenre[1].1)
    }
    return answer
}

/*
딕셔너리 형태
genre가 Key
value: 총 횟수?
value 기준 sort
*/