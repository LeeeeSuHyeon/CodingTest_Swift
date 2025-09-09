import Foundation

enum UserState {
    case enter
    case leave
    
    var prefixString: String {
        switch self {
            case .enter: return "님이 들어왔습니다."
            case .leave: return "님이 나갔습니다."
        }
    }
}

func solution(_ record:[String]) -> [String] {
    var answer = [(id: String, state: UserState)]()
    var nicknameDic = [String: String]() // key: id, value: nickname
    
    for rec in record {
        let input = rec.split(separator: " ").map { String($0) }
        let (state, id) = (input[0], input[1])
        
        switch state {
            case "Enter":
                nicknameDic[id] = input[2]
                answer.append((id: id, state: .enter))
            case "Leave":
                answer.append((id: id, state: .leave))
            case "Change":
                nicknameDic[id] = input[2]
            default: continue
        }
    }
    
    return answer.map { "\(nicknameDic[$0.id]!)\($0.state.prefixString)" }
}

/*
1. 이름 상태 딕셔너리 생성
- Change, Enter일 때, 아이디 기준 이름 생성

*/