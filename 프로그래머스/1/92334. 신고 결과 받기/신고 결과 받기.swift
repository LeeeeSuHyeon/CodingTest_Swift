import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var idList = Array(repeating: 0, count: id_list.count)
    var dic = [String: [String]]()
    report.forEach {
        let a = $0.split(separator: " ").map{String($0)}
        dic[a[1], default: []].append(a[0])
    }
    
    for (key, value) in dic {
        let setValue = Set(value)
        let value = Array(setValue)
        if value.count >= k {
            value.forEach {
                let index = id_list.firstIndex(of: $0)!
                idList[index] += 1    
            }            
        }
    }
    return idList
}