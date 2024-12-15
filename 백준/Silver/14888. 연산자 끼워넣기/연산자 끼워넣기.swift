let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map{Int($0)!}
var op = readLine()!.split(separator: " ").map{Int($0)!} // +, -, *, /
var maxValue = Int.min
var minValue = Int.max

func recur(_ index : Int, _ value : Int){
    if index == N {
        maxValue = max(maxValue, value)
        minValue = min(minValue, value)
        return
    }
    
    for i in 0..<4 {
        if op[i] <= 0 { continue }
        op[i] -= 1
        
        switch i {
        case 0: recur(index + 1, value + A[index])
        case 1: recur(index + 1, value - A[index])
        case 2: recur(index + 1, value * A[index])
        case 3: recur(index + 1, value / A[index])
        default : break
        }
        op[i] += 1
    }
}

recur(1, A[0])
print(maxValue)
print(minValue)
