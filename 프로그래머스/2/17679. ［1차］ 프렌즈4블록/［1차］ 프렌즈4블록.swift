func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var board = board.map { $0.map { $0 } }
    var flag = true
    var removeBlock: Character = "-"
    var answer = 0
    
    while flag {
        flag = false
        var check = Array(repeating: Array(repeating: false, count: n), count: m)
        
        for y in 0..<m-1 {
            for x in 0..<n-1 {
                let current = board[y][x] 
                let right = board[y][x+1]
                let down = board[y+1][x]
                let diagonal = board[y+1][x+1]
                guard current == right, right == down, down == diagonal, current != removeBlock else { continue }
                
                flag = true
                check[y][x] = true
                check[y][x+1] = true
                check[y+1][x] = true
                check[y+1][x+1] = true
            }
        }
        
        guard flag else { break }
        
        for y in 0..<m {
            for x in 0..<n {
                if check[y][x] {
                    answer += 1
                    board[y][x] = removeBlock
                }
            }
        }

        for y in (0..<m).reversed() {
            for x in 0..<n {
                if board[y][x] == removeBlock {
                    var currentY = y
                    while currentY > 0 {                        
                        currentY -= 1
                        if board[currentY][x] != removeBlock {
                            board[y][x] = board[currentY][x]
                            board[currentY][x] = removeBlock
                            break
                        }
                    }
                }
            }
        }
    }
    
    return answer
}

/*
1. board를 2차원 배열로 바꿈
2. 한 라인씩 훑으면서 (x, y), (x+1, y), (x, y+1), (x+1, y+1)이 모두 같은 글자인지 확인
3. 같은 글자면 check 2차원 배열에 true 표시
4. 아래에서 위로 훑으면서 true인 부분을 없애고 false를 내림
5. true의 개수를 세서 누적합
6. 2-5 


*/