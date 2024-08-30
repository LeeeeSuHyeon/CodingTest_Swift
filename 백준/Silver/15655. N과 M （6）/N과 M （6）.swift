let input = readLine()!.split(separator : " ").map{Int($0)!}
let nums = readLine()!.split(separator : " ").map{Int($0)!}.sorted()
func recur(_ depth : Int, _ start : Int, _ arr : [String]) {
    if depth == input[1] {
        print(arr.joined(separator : " "))
        return
    }
    
    for i in start..<input[0] {
        recur(depth + 1, i + 1, arr + ["\(nums[i])"])
    }
}


recur(0, 0, [])