import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var dicRank = [String: Int]()
    var dicPlayer = [Int: String]()
    
    for (i, player) in players.enumerated() {
        dicRank[player] = i
        dicPlayer[i] = player
    }
    
    for calling in callings {
        if let currentRank = dicRank[calling], let player = dicPlayer[currentRank - 1] {      
            dicRank[player]! += 1
            dicRank[calling]! -= 1

            dicPlayer[currentRank]! = player
            dicPlayer[currentRank - 1]! = calling
        }
    }

    return dicPlayer.sorted { $0.0 < $1.0 }.map { $0.value }
}


/*
순위를 보장하려면 스왑을 하거나, 앞 등수의 선수도 조정해줘야 함
스왑은 시간초과 남 (스왑 + firstIndex)

*/