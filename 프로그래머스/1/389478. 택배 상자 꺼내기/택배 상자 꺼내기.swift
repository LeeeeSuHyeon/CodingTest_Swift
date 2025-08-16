import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    let (baseColumn, baseDirection, baseHeight) = checkColumnAndDirectionAndHeight(n, w)
    let (column, direction, height) = checkColumnAndDirectionAndHeight(num, w)

    return getAnswer(baseColumn: baseColumn, baseDirection: baseDirection, baseHeight: baseHeight, targetColumn: column, targetHeight: height)
}

func checkColumnAndDirectionAndHeight(_ number: Int, _ width: Int) -> (Int, Bool, Int) {
    let x = number / width
    let height = number % width > 0 ? x + 1 : x
    let isDirection = height % 2 == 1
    let k = number % width == 0 ? width : number % width
    return isDirection ? (k, isDirection, height) : (width - k + 1, isDirection, height)
}

func getAnswer(baseColumn: Int, baseDirection: Bool, baseHeight: Int, targetColumn: Int, targetHeight: Int) -> Int {
    var answer = baseHeight - targetHeight + 1
    if baseDirection {
        if targetColumn > baseColumn {
            answer -= 1
        }
    } else {
        if targetColumn < baseColumn {
            answer -= 1
        }
    }
    return answer
}


/*
22 = 6 * 3 + 4
n = w * x + k

k <= 1 이면 k == 1

x % 2 == 1 // 홀수일 때, 역방향 (오른쪽에서 k 번째)
x % 2 == 0 // 짝수일 때, 정방향 (왼쪽에서 k 번째)

정방향이면서 3번째면 123
역방향이면서 3번째면 3456

*/