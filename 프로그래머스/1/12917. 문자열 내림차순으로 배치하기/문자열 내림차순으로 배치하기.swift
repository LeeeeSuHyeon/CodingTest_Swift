func solution(_ s:String) -> String {
    var lower = s.filter{$0.isLowercase}.sorted(by: >).map{String($0)}.joined()
    var upper = s.filter{$0.isUppercase}.sorted(by: >).map{String($0)}.joined()
    return lower + upper
}