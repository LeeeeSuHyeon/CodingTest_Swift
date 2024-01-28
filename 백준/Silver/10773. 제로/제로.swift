let num = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<num {
    let a = Int(readLine()!)!

    if a != 0 {
        arr.append(a)
    } else {
        if let last = arr.last {
            arr.removeLast()
        }
    }
}
print(arr.reduce(0, +))