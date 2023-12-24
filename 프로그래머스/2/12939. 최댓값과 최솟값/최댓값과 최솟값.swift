func solution(_ s:String) -> String {
    var arr = s.components(separatedBy : " ").map{Int($0)!}
    
    return "\(arr.sorted()[0]) \(arr.sorted()[arr.count - 1])"
}