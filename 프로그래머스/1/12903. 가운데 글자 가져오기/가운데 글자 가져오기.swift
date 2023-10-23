func solution(_ s:String) -> String {
    var m = Int(s.count) / 2
    var arr = s.map{$0}
    return s.count % 2 == 0 ? String(arr[m-1]) + String(arr[m]) : String(arr[m])
}
