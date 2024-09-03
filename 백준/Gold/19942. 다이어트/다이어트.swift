let input = Int(readLine()!)!
var nut : [[Int]] = []
let minNut = readLine()!.split(separator : " ").map{Int($0)!}
for _ in 0..<input {
    nut.append(readLine()!.split(separator : " ").map{Int($0)!})
}
var answer = Int.max
var answerArr = [String]()
func recur(_ index : Int, _ p : Int, _ f : Int, _ s : Int, _ v : Int, _ value : Int, _ arr : [String]) {
    if index == input{
        if (p >= minNut[0] && f >= minNut[1] && s >= minNut[2] && v >= minNut[3]) {
            if answer > value || (answer == value && answerArr.joined() > arr.joined()) {
                answer = value
                answerArr = arr
            }
        }
        return
    }
    recur(index + 1, p + nut[index][0], f + nut[index][1], s + nut[index][2], v + nut[index][3],
         value + nut[index][4], arr + ["\(index + 1)"])
    recur(index + 1, p, f, s, v, value, arr)
}
recur(0, 0, 0, 0, 0, 0, [])
if !answerArr.isEmpty {
    print(answer)
    print(answerArr.joined(separator : " "))
} else {print(-1)}


