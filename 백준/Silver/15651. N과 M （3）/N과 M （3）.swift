let input = readLine()!.split(separator : " ").map{Int($0)!}
var result = ""
func recur(depth : Int, arr : [String]) {
    if depth == input[1] {
        result += ("\(arr.joined(separator : " "))" + "\n")
        return
    }
    
    for i in 1...input[0] {
        recur(depth : depth + 1, arr : arr + ["\(i)"])
    }
}
recur(depth : 0, arr : [])
print(result)