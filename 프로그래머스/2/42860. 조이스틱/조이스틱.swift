import Foundation

func solution(_ name:String) -> Int {
    let array = Array(name)
    let length = array.count
    let asciiA = Int(Character("A").asciiValue!)
    let asciiZ = Int(Character("Z").asciiValue!)
    var answer = 0
    
    for alpha in array {
        let value = Int(alpha.asciiValue!)
        let upMoves = value - asciiA
        let downMoves = asciiZ - value + 1
        answer += min(upMoves, downMoves)
    }
    
    var rightMoves = length - 1
    
    for startIndex in 0..<length {
        var endIndex = startIndex + 1
        while endIndex < length, array[endIndex] == "A" {
            endIndex += 1
        }
        
        let moveFront = startIndex * 2 + (length - endIndex)
        let moveBack = (length - endIndex) * 2 + startIndex
        
        rightMoves = min(rightMoves, moveFront)
        rightMoves = min(rightMoves, moveBack)
    }
    
    answer += max(rightMoves, 0)
    return answer
}

/*
맨 처음은 A로 시작함
아스키 코드 사용

알파벳이 A랑 가까운지, Z랑 가까운지 확인 -> 아스키 코드의 차 + 좌우 커서 이동
A: 65
Z: 90

ABCDEFGHIJKLMN OPQRSTUVWXYZ

k - 10
N - 13 (78)

R - 뒤로 총 10번
O - 뒤로 13
N - 뒤로 14

9, 4, 10, 13, 4, 13
*/