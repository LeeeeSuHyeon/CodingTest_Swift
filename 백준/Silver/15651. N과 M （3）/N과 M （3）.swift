let input = readLine()!.split(separator : " ").map{Int($0)!}
func recur(depth : Int, arr : [Int]) {
    if depth == input[1] {
        print(arr.map{String($0)}.joined(separator : " "))
        return
    }
    
    for i in 1...input[0] {
        recur(depth : depth + 1, arr : arr + [i])
    }
}
recur(depth : 0, arr : [])