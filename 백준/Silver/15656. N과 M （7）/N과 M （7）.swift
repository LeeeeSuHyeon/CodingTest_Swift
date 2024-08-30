let input = readLine()!.split(separator : " ").map{Int($0)!}
let nums = readLine()!.split(separator : " ").map{Int($0)!}.sorted()
var results = ""
func recur(_ depth : Int, _ arr : [String]) {
    if depth == input[1] {
        results += arr.joined(separator:" ") + "\n"
        return
    }
    
    for i in nums {
        recur(depth + 1, arr + ["\(i)"])
    }
}
recur(0, [])
print(results)