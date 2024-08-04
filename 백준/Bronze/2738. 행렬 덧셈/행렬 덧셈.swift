import Foundation

let NM = readLine()!.split(separator : " ").map{Int(String($0))!}
var A = [[Int]]()
var B = [[Int]]()

for _ in 0..<NM[0] {
    A.append(readLine()!.split(separator : " ").map{Int(String($0))!})
}

for _ in 0..<NM[0] {
    B.append(readLine()!.split(separator : " ").map{Int(String($0))!})
}

for i in 0..<NM[0] {
    var arr = [Int]()
    for j in 0..<NM[1] {
        arr.append(A[i][j] + B[i][j])
    }
    print(arr.map{String($0)}.joined(separator : " "))
}
