import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    var count = 0
    
    for str in goal {
        if cards1.count != 0 && cards1[0] == String(str) {
            cards1.removeFirst()
            count += 1
        }
        else if cards2.count != 0 && cards2[0] == String(str) {
            cards2.removeFirst()
            count += 1
        }
    }
    
     
    return goal.count == count ? "Yes" : "No"
}