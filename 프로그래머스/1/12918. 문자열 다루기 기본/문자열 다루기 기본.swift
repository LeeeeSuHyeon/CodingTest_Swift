func solution(_ s:String) -> Bool {
    if(s.count != 4 && s.count != 6) { return false}
    return (Array(s).filter{$0.isNumber}.count == s.count) ? true : false
}
