import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let newLost = lost.filter { !reserve.contains($0) }.sorted()
    let newReserve = reserve.filter { !lost.contains($0) }.sorted()
    
    var lostIndex = 0
    var reserveIndex = 0
    var count = 0
    
    while lostIndex < newLost.count && reserveIndex < newReserve.count {
        if abs(newLost[lostIndex] - newReserve[reserveIndex]) <= 1 {
            lostIndex += 1
            reserveIndex += 1
            count += 1
        } else if newLost[lostIndex] < newReserve[reserveIndex] {
            lostIndex += 1
        } else {
            reserveIndex += 1
        }
    }
    
    return n - newLost.count + count
}