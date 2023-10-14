func solution(_ s:String) -> Int {
    var answer = 0
    var arr = Array(s)
    if arr[0] == "+" {
        arr.removeFirst()
    }
    answer = Int(arr.map{String($0)}.joined())!
    return answer
}
