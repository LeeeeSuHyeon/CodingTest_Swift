import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    // var res = [String]()
    // var str = my_string
    // if(my_string.count < is_prefix.count){return 0}
    // for _ in (0..<is_prefix.count){
    //     res.append(String(str.removeFirst()))
    // }
    // return res.joined() == is_prefix ? 1 : 0
    
    
    return my_string.prefix(is_prefix.count) == is_prefix ? 1 : 0
}