import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var countOfClothes = [String: Int]()
    var answer = 0
    
    for clothe in clothes {
        countOfClothes[clothe[1], default: 1] += 1 // default: 1인 이유: 안 입었을 경우 포함
    }

    if countOfClothes.keys.count > 1 {
        answer = countOfClothes.values.reduce(1, *)
    } else {
        answer = countOfClothes.values.first!
    }

    return answer - 1 // 다 안 입었을 경우 제외
}


/*

headgear: 2
eyewear: 1

2c1 * 1c1 + totalCount

face: 3
3c1

*/