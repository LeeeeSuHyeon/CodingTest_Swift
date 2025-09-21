import Foundation

struct Time {
    var hour: Int
    var minute: Int {
        didSet {
            if minute >= 60 {
                hour += 1
                minute -= 60
            }
        }
    }
    
    var totalMinute: Int {
        return 60 * hour + minute
    }
    
    init(_ bookTime: String) {
        let time = bookTime.split(separator: ":").map { Int(String($0))! }
        self.hour = time[0]
        self.minute = time[1]
    }
    
    mutating func cleanRoom() {
        minute += 10
    }
}

func solution(_ book_time:[[String]]) -> Int {
    var rooms = [Time]()
    var answer = 0

    for book in book_time.sorted { $0[0] < $1[0] } {
        
        let start = Time(book[0])
        var end = Time(book[1])
        end.cleanRoom()
        
        if !rooms.isEmpty { 
            rooms = rooms.filter { $0.totalMinute > start.totalMinute } 
        }
        
        rooms.append(end)
        answer = max(answer, rooms.count)
    }
    
    return answer
}

/* 2104 ~

*/