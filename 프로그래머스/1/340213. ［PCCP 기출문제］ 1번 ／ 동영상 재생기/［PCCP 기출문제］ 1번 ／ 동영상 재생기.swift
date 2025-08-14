import Foundation

func solution(_ video_len:String, _ pos:String, _ op_start:String, _ op_end:String, _ commands:[String]) -> String {
    let maxSeconds = transferToSeconds(video_len.split(separator: ":").map { Int($0)! })
    var current = transferToSeconds(pos.split(separator: ":").map { Int($0)! })
    let opStart = transferToSeconds(op_start.split(separator: ":").map { Int($0)! })
    let opEnd = transferToSeconds(op_end.split(separator: ":").map { Int($0)! })
    
    for command in commands {
        passOpening(current: &current, opStart: opStart, opEnd: opEnd)
        calculator(current: &current, maxSeconds: maxSeconds, command: Command(rawValue: command)!)
        passOpening(current: &current, opStart: opStart, opEnd: opEnd)
    }
    
    let hour = "\(current / 60)".count < 2 ? "0\(current / 60)" : "\(current / 60)"
    let minute = "\(current % 60)".count < 2 ? "0\(current % 60)" : "\(current % 60)"

    return "\(hour):\(minute)"
}


enum Command: String {
    case next
    case prev
}

func transferToSeconds(_ times: [Int]) -> Int {
     return 60 * times[0] + times[1]
}

func calculator(current: inout Int, maxSeconds: Int, command: Command) {
    switch command {
        case .next:
            current += 10
            current = current <= maxSeconds ? current : maxSeconds
        case .prev:
            current -= 10
            current = current >= 0 ? current : 0
    }
}

func passOpening(current: inout Int, opStart: Int, opEnd: Int) {
    current = current >= opStart && current <= opEnd ? opEnd : current
}