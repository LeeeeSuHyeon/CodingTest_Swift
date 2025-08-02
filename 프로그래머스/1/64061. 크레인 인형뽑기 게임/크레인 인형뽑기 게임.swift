import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boards = board
    var cart = [Int]()
    var answer = 0
    
    for move in moves {
        for (i, board) in boards.enumerated() {
            if board[move - 1] != 0 {
                cart.append(board[move - 1])
                boards[i][move - 1] = 0
                break
            }
        }
        
        if cart.count >= 2 {         
            let lasts = Array(cart.suffix(2))
            if lasts[0] == lasts[1] {
                cart.removeLast(2)
                answer += 2
            }
        }
    }
    
    return answer
}


/*
cart -> 
4, 3, 1, 1
4, 3, 3
4, 2, 4
*/

