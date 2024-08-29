let input = readLine()!.split(separator : " ").map{Int($0)!}
func recur(depth : Int, start : Int, arr : [String]){
    if depth == input[1] {
        print(arr.joined(separator : " "))
        return
    }
    for i in start...input[0] {
         recur(depth : depth + 1, start: i, arr : arr + ["\(i)"])
    }
}
recur(depth : 0, start : 1, arr : [])