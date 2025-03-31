import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total = brown + yellow 
    var array = [[Int]]()
    var answer = [Int]()
    
    for i in 3...Int(sqrt(Double(total))) where total % i == 0 { // 약수 구하기 (중앙에 다른 색이 칠해지려면 3개 이상부터 가능)
        array.append([total / i, i]) // 가로의 길이는 세로의 길이와 같거나 세로 길이보다 김
    }
    
    for xy in array {
        let (x, y) = (xy[0], xy[1])
        if (x - 2) * (y - 2) == yellow && x * y - yellow == brown {
            answer = [x, y]
            break
        }
    }
    return answer
}

/*
answer [x, y]
[x-2, y-2] -> (x-2) * (y-2) = yellow
brown = x * y - yellow
brwon = x * 2 + (y - 2) * 2


*/