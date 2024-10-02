let N = Int(readLine()!)!
let str = readLine()!.map{$0}

var length = 0
var start = 0
var end = 0
var arr = [Character]()
var use = [Character]()

while end < str.count {
    if str[start] == str[end] {
        if !use.contains(str[end]) {
            use.append(str[end])
        }
        arr.append(str[end])
        end += 1
    } else {
        if use.contains(str[end]) {
            arr.append(str[end])
            end += 1
        } else {
            if use.count < N {
                use.append(str[end])
                arr.append(str[end])
                end += 1
            } else {
                length = max(length, arr.count)
                start += 1
                end = start
                arr = []
                use = []
            }
        }
    }
    length = max(length, arr.count)
}
print(length)

