func solution(_ a:Int, _ b:Int) -> String {
    let week = [ "THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let monthDay = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    
    var num = 0
    
    for i in 0..<a {
        num += monthDay[i]
    }
    num += b
    return week[num % 7]
}