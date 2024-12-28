let N = Int(readLine()!)!
var dic = [String : Int]()
for _ in 0..<N {
    let str = readLine()!
    dic[str] = str.count
}
let sordtedDic = dic.sorted { (first, second) in
    return first.value == second.value ? first.key < second.key : first.value < second.value
}
for dic in sordtedDic {
    print(dic.key)
}
