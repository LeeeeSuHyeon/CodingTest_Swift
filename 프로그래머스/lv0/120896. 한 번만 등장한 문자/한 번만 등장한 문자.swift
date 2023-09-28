import Foundation

func solution(_ s:String) -> String {
    var str : [String] = []
    for i in s{
        var count = 0
        for j in s{
            if i == j{
                count += 1
            }
        }
        if count == 1{ str.append(String(i))}
    }
    return str.sorted().joined()
}
