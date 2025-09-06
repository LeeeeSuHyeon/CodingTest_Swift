import Foundation

struct Time: Hashable {
    let hour: Int
    let minute: Int
    var totalMinute: Int {
        60 * hour + minute
    }
    
    init(totalMinute: Int) {
        self.hour = totalMinute / 60
        self.minute = totalMinute % 60
    }
    
    init(timeString: String) {
        let time = timeString.split(separator: ":").map { Int($0)! }
        self.hour = time[0]
        self.minute = time[1]
    }
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let (baseMinute, baseFee, unitMinute, unitFee) = (fees[0], fees[1], fees[2], fees[3])
    var parkingCars = [String: Time]()
    var totalParkingTimes = [String: Int]()
    
    func calculator(totalParkingTime: Int) -> Int {
        if totalParkingTime < baseMinute { return baseFee }
        return baseFee + Int(ceil(Double(totalParkingTime - baseMinute) / Double(unitMinute))) * unitFee
    }
    
    for record in records {
        let record = record.split(separator: " ").map { String($0) }
        let (time, number, state) = (Time(timeString: record[0]), record[1], record[2])
        
        switch state {
            case "IN":
                parkingCars[number] = time
            case "OUT":
                let inTime = parkingCars[number]!
                let gap = time.totalMinute - inTime.totalMinute
                totalParkingTimes[number, default: 0] += gap
                parkingCars[number] = nil
            default: break
        }
    }
    
    let maxTime = Time(timeString: "23:59")
    for (number, time) in parkingCars {
        let gap = maxTime.totalMinute - time.totalMinute
        totalParkingTimes[number, default: 0] += gap
    }
    
    return totalParkingTimes.sorted { $0.key < $1.key }.map { calculator(totalParkingTime: $0.value) }
}

/*

올림: ceil
*/