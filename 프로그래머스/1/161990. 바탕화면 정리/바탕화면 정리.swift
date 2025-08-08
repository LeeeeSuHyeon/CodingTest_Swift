import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    let wallpapers = wallpaper.map { $0.map { String($0) } }
    let xCount = wallpapers.count
    let yCount = wallpapers.first!.count
    var lux = Int.max
    var luy = Int.max
    var rdx = Int.min
    var rdy = Int.min
    
    for x in 0..<xCount {
        for y in 0..<yCount {
            if wallpapers[x][y] == "#" {
                lux = min(lux, x)
                luy = min(luy, y)
                rdx = max(rdx, x)
                rdy = max(rdy, y)
            }
        }
    }
    
    return [lux, luy, rdx + 1, rdy + 1]
}
