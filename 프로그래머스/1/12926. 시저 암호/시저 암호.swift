func solution(_ s:String, _ n:Int) -> String {
    let upper = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let lower = Array("abcdefghijklmnopqrstuvwxyz")
    
    return s.map{
        if let index = lower.firstIndex(of : $0){
            let newIndex = (index + n) % lower.count
            return String(lower[newIndex])
        }
        else if let index = upper.firstIndex(of : $0){
            let newIndex = (index + n) % upper.count
            return String(upper[newIndex])
        }
        else {
            return String($0)
        }
       
    }.joined()
    
    
}