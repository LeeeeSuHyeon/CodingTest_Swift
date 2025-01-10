let N = Int(readLine()!)!
var cards = [Int]() // 카드 개수 배열
for _ in 0..<N {
    cards.append(Int(readLine()!)!)
}
cards.sort() // 카드 정렬


if N == 1 {
    print(0)
}
else {
    var count = 0
    while cards.count != 1 {
        let firstCards = cards.removeFirst()
        let secondCards = cards.removeFirst()
        let comparisonCount = firstCards + secondCards
        let index = findIndex(comparisonCount)
        
        cards.insert(comparisonCount, at: index)
        count += comparisonCount
    }
    print(count)
}


func findIndex(_ num: Int) -> Int{
    var left = 0
    var right = cards.count - 1
    while left <= right {
        let mid = (left + right) / 2
        if cards[mid] == num {
            return mid
        }
        else if cards[mid] < num {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return left
}
