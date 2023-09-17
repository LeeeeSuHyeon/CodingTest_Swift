import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    // var repeated = my_string.map{$0}
    // var str = repeated.map{String(repeating: $0, count: n)}
    // return str.joined()
    
    return my_string.map{
        String(repeating: $0, count : n)
    }.joined()
    
}