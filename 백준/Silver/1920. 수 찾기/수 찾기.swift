let arrCount = Int(readLine()!)!
let arr = Set(readLine()!.split(separator : " ").map{Int(String($0))})
let num = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map{Int(String($0))}

for i in numArr {
    print(arr.contains(i) ? 1 : 0)
}