import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {

    let parks = park.map { $0.map { $0 }  }
    let routes = routes.map { $0.split(separator: " ") } 
    let height = parks.count - 1
    let width = parks.first!.count - 1
    
    var current = [0, 0]
    if let row = parks.firstIndex(where: { $0.contains("S") }) {
        if let column = parks[row].firstIndex(of: "S") {
            current = [row, column]
        }
    }

    for route in routes {
        var move = current
        let distance = Int(route[1])!
        var flag = true
        switch route[0] {
            case "E":
                for i in move[1]...move[1]+distance {
                    if i <= width, parks[move[0]][i] == "X" {
                        flag = false
                        break
                    }
                }
                move = [move[0], move[1] + distance]
            
            case "W": 
                for i in move[1]-distance...move[1] {
                    if i >= 0, parks[move[0]][i] == "X" {
                        flag = false
                        break
                    }
                }
                move = [move[0], move[1] - distance]
            case "N": 
                for i in move[0]-distance...move[0] {
                    if i >= 0, parks[i][move[1]] == "X" {
                        flag = false
                        break
                    }
                }
                move = [move[0] - distance, move[1]]
            case "S":
               for i in move[0]...move[0]+distance {
                    if i <= height, parks[i][move[1]] == "X" {
                        flag = false
                        break
                    }
                }
                move = [move[0] + distance, move[1]]
            default: continue
        }
        
        if !(move[0] < 0 || move[0] > height || move[1] < 0 || move[1] > width) && flag {
            current = move  
        }
    }
    
    return current
}
